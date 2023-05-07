using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;
using System.Threading;

namespace Socket_Client_5I_Erraknaoui_Abderazak
{
    /// <summary>
    /// Logica di interazione per MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Socket socket = null;
        IPAddress remote_address;
        IPEndPoint remote_endpoint;

        IPAddress local_address;
        IPEndPoint local_endpoint;
        Thread threadLetturaDati;

        public MainWindow()
        {
            InitializeComponent();
            txt_connessione.Text = "Non Connesso";
        }

        private void RicezioneDati()
        {
            try
            {
                //Faccio un ciclo infinito per ricevere i dati
                while (true)
                {
                    int nBytes = 0;

                    if ((nBytes = socket.Available) > 0)
                    {
                        //Istnzio il buffer a nBytes
                        byte[] buffer = new byte[nBytes];

                        //Prendo il serverEndPoint
                        EndPoint serverEndPoint = new IPEndPoint(IPAddress.Any, 0);

                        //nBytes sarà lungo quanto il datagramma ricevuto
                        nBytes = socket.ReceiveFrom(buffer, ref serverEndPoint);

                        //Prendo il messaggio
                        string messaggio = Encoding.UTF8.GetString(buffer, 0, nBytes);

                        //Uso il Dispatcher inquanto gli elementi della UI appartengono a un thread diverso, e l'unico modo per modififcare un elemento grafico e con Dispatcher.BeginInvoke
                        Dispatcher.BeginInvoke(new Action(delegate ()
                        {
                            //Aggiungo il messaggio alla ListBox
                            lst_listaMessaggi.Items.Add(serverEndPoint + ": " + DateTime.Now + " " + messaggio);
                            
                        }));
                    }

                }
            }
            //Gestisco le eccezioni della socket
            catch (SocketException ex)
            {
                MessageBox.Show("Errore: " + ex.Message);
            }
            //Gestisco tutte le altre eccezioni che non riguardano la socket
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btn_inivia_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                //Verifico che l'input non sia nullo o vuoto
                //E con txt_messaggio.Text.Trim() != "" vado a vedere se nel caso l'utente non inserisci un testo ma solo uno spazio
                if (string.IsNullOrEmpty(txt_messaggio.Text) == false && txt_messaggio.Text.Trim() != "")
                {
                    //Prendo il messaggio in input e lo cnverto in un array di byte
                    byte[] messaggio = Encoding.UTF8.GetBytes(txt_messaggio.Text);

                    //Mando il messaggio
                    socket.SendTo(messaggio, remote_endpoint);

                    //Cancello il contenuto della TextBox
                    txt_messaggio.Text = null;

                    //Converto l'array di byte in una stringa
                    string messaggioStringa = Encoding.UTF8.GetString(messaggio, 0, messaggio.Length);

                    //Aggiungo il messaggio alla ListBox
                    lst_listaMessaggi.Items.Add(local_endpoint+" "+DateTime.Now + " " + messaggioStringa);
                    
                }
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btn_conetti_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                //Creo la Socket
                socket = new Socket(AddressFamily.InterNetwork, SocketType.Dgram, ProtocolType.Udp);
                //Creo il Thread assegnandoli anche il metodo che dovra eseguire il thread
                threadLetturaDati = new Thread(new ThreadStart(RicezioneDati));
                //Indico che il thread deve essere eseguito in background
                threadLetturaDati.IsBackground = true;
                //Avvio il Thread
                threadLetturaDati.Start();

                //Prendo in input l'indirizzo del clint da cui voglio mandare il messaggio
                //infatti ho previsto che posso mandare il messaggio al server da un indirizzo preso in input 
                local_address = IPAddress.Parse(txt_IP.Text);
                remote_address = IPAddress.Parse(txt_IPDestinatario.Text);

                //Prendo in input le porte 
                int porta_local = int.Parse(txt_portaIP.Text);
                int porta_remote = int.Parse(txt_PortaDestinatario.Text);
                
                //Iniziallizo gli endpoint quindi sia locale che remote specificando gli indirizzi e le porte
                local_endpoint = new IPEndPoint(local_address, porta_local);
                remote_endpoint = new IPEndPoint(remote_address, porta_remote);
 
                socket.Blocking = false;
                //Definisco che la socket invia in modalità broadcast
                socket.EnableBroadcast = true;

                //Stabilisco la connessione 
                socket.Connect(remote_endpoint);

                //Se la socket è connessa allora mostro tutti i componenti nascosti
                if (socket.Connected == true)
                {
                    txt_connessione.Text = "Connesso";
                    lst_listaMessaggi.Visibility = Visibility.Visible;
                    btn_inivia.Visibility = Visibility.Visible;
                    txt_messaggio.Visibility = Visibility.Visible;
                    btn_conetti.IsEnabled = false;

                    txt_IP.IsEnabled = false;
                    txt_IPDestinatario.IsEnabled = false;
                    txt_portaIP.IsEnabled = false;
                    txt_PortaDestinatario.IsEnabled = false;
                }
                else
                {
                    //Se la socket è disconessa allora mostro tutti i componenti nascosti
                    txt_connessione.Text = "Non Connesso";
                    lst_listaMessaggi.Visibility = Visibility.Hidden;
                    btn_inivia.Visibility = Visibility.Hidden;
                    txt_messaggio.Visibility = Visibility.Hidden;
                    txt_IP.IsEnabled = true;
                    txt_IPDestinatario.IsEnabled = true;

                    txt_IP.IsEnabled = true;
                    txt_IPDestinatario.IsEnabled = true;
                    txt_portaIP.IsEnabled = true;
                    txt_PortaDestinatario.IsEnabled = true;
                }

            }
            //Gestisco le eccezioni della socket
            catch (SocketException ex)
            {
                MessageBox.Show("Errore: " + ex.Message);
            }
            //Gestisco tutte le altre eccezioni che non riguardano la socket
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btn_cancellaChat_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                //Pulisco la listBox
                lst_listaMessaggi.Items.Clear();
                MessageBox.Show("La chat è stata cancellata con successo");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
