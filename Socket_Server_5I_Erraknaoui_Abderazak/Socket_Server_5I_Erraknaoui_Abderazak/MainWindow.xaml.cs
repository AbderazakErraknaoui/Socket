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

namespace Socket_Server_5I_Erraknaoui_Abderazak
{
    /// <summary>
    /// Logica di interazione per MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Socket socket;
        //DispatcherTimer dTimer = null;
        EndPoint remoteEndPoint;
        //static Thread thread;

        IPAddress local_address;
        IPEndPoint local_endpoint;
        Thread threadLetturaDati;

        public MainWindow()
        {
            InitializeComponent();
            //Prendo l'indirizzo ip del localhost e lo assegnerò al server, infatti ho pensato che il server avesse un indirizzo Ip local
            //Mentre per l'ip del client potesse scegliere a suo piacimento l'ip
            IPHostEntry host = Dns.GetHostEntry("localhost");
            //Prendo l'indirizzo Ip alla posizione 1 perchè è 127.0.0.1 quindi il localhost
            local_address = host.AddressList[1];
            //Creo l'endpoint con l'indirizzo e la porta
            local_endpoint = new IPEndPoint(local_address, 12000);
            txt_connessione.Text = "Non Connesso";
            txt_IP.Text = Convert.ToString(local_endpoint);

        }

        private void btn_inivia_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                //Verifico che l'input non sia nullo o vuoto
                //E con txt_messaggio.Text.Trim() != "" vado a vedere se nel caso l'utente non inserisci un testo ma solo uno spazio
                if (string.IsNullOrEmpty(txt_messaggio.Text) == false && txt_messaggio.Text.Trim() != "" )
                {
                    //Prendo il messaggio in input e lo cnverto in un array di byte
                    byte[] messaggio = Encoding.UTF8.GetBytes(txt_messaggio.Text);
                    //Mando il messaggio
                    socket.SendTo(messaggio, remoteEndPoint);
                    //Cancello il contenuto della TextBox
                    txt_messaggio.Text = null;
                    //Converto l'array di byte in una stringa
                    string messaggioStringa = Encoding.UTF8.GetString(messaggio, 0, messaggio.Length);
                    //Aggiungo il messaggio alla ListBox
                    lst_listaMessaggi.Items.Add(local_endpoint+" "+DateTime.Now + " " + messaggioStringa);
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

        public void RicezioneDati()
        {
            try
            {
                //Faccio un ciclo infinito per ricevere i dati
                while (true)
                {
                    int nBytes = 0;

                    if ((nBytes = socket.Available) > 0)
                    {
                        //Uso il Dispatcher per modificare gli elementi della UI
                        Dispatcher.BeginInvoke(new Action(delegate ()
                        {
                            btn_ascolta.IsEnabled = false;
                            txt_connessione.Text = "Connesso";
                            btn_inivia.IsEnabled = true;
                        }));
                        //Istnzio il buffer a nBytes
                        byte[] buffer = new byte[nBytes];

                        //Prendo il remoteEndPoint
                        remoteEndPoint = new IPEndPoint(IPAddress.Any, 0);
                        //nBytes sarà lungo quanto il datagramma ricevuto
                        nBytes = socket.ReceiveFrom(buffer, ref remoteEndPoint);
                        //Prendo il messaggio
                        string messaggio = Encoding.UTF8.GetString(buffer, 0, nBytes);

                        //Uso il Dispatcher inquanto gli elementi della UI appartengono a un thread diverso, e l'unico modo per modififcare un elemento grafico e con Dispatcher.BeginInvoke
                        Dispatcher.BeginInvoke(new Action(delegate ()
                        {
                            if (socket.IsBound == false)
                            {
                                txt_connessione.Text = "Non Connesso";
                                btn_inivia.IsEnabled = false;
                            }
                            else if (socket.IsBound == true)
                            {
                                lst_listaMessaggi.Items.Add(remoteEndPoint + ": " + DateTime.Now + " " + messaggio);
                            }
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

        private void btn_ascolta_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                //Creo la socket
                socket = new Socket(AddressFamily.InterNetwork, SocketType.Dgram, ProtocolType.Udp);

                //Creo un endpoint e attendo i dati da parte del client
                socket.Bind(local_endpoint);

                txt_connessione.Text = "In attesa...";
                //Creo il Thread assegnandoli anche il metodo che dovra eseguire il thread
                threadLetturaDati = new Thread(new ThreadStart(RicezioneDati));
                //Indico che il thread deve essere eseguito in background
                threadLetturaDati.IsBackground = true;
                //Avvio il Thread
                threadLetturaDati.Start();
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
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
