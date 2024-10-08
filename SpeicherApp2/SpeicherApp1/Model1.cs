using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Xml.Serialization;


namespace SpeicherApp1
{


    internal class Model1
    {

        protected ObservableCollection<Model1> list1 = new ObservableCollection<Model1>();
        protected string id;
        protected string dienst;
        protected string nutzername;
        protected string passwort;
        DataSet myXmlDataSet;
        DataTable passwortTabelle;


        public Model1(string i, string d, string n, string p)
        {
            id = i;
            dienst = d;
            nutzername = n;
            passwort = p;


        }

        public Model1()
        {
            Laden();
        }
        public string Id
        {
            get { return id; }
            set { id = value; }

        }
        public string Dienst
        {
            get { return dienst; }
            set { dienst = value; }

        }

        public string Nutzername
        {
            get { return nutzername; }
            set { nutzername = value; }

        }

        public string Passwort
        {
            get { return passwort; }
            set { passwort = value; }

        }

        public ObservableCollection<Model1> List1
        {
            get { return list1; }
            set { list1 = value; }

        }

        public DataTable PasswortTabelle
        {
            get { return passwortTabelle; }
            set { passwortTabelle = value; }

        }

        public void Laden()
        {
            myXmlDataSet = new DataSet();
            myXmlDataSet.ReadXml("XMLFile1.xml");

            passwortTabelle = myXmlDataSet.Tables["Name"];
            if (passwortTabelle == null)
                //{
                //    passwortTabelle = list1;
                //}
                MessageBox.Show("Keine Daten vorhanden");

            foreach (DataRow dr in passwortTabelle.Rows)
            {
                list1.Add(new Model1(id = Convert.ToString(dr[0]),
                   dienst = Convert.ToString(dr[1]),
                   nutzername = Convert.ToString(dr[2]),
                   passwort = Convert.ToString(dr[3])));


            }
        }

        public void Update(string i, string d, string n, string p)
        {
            DataRow zeile = passwortTabelle.NewRow();//Cache wird verändert
            zeile[0] = i;
            zeile[1] = d;
            zeile[2] = n;
            zeile[3] = p;
            passwortTabelle.Rows.Add(zeile);
            passwortTabelle.WriteXml("XMLFile1.xml");//xml ergänzt


            foreach (DataRow dr in passwortTabelle.Rows)
            {
                list1.Add(new Model1(id = Convert.ToString(dr[0]),
                   dienst = Convert.ToString(dr[1]),
                   nutzername = Convert.ToString(dr[2]),
                   passwort = Convert.ToString(dr[3])));


            }
        }

        public void Loeschen(string i)
        {
            for (int h = 1; h <= passwortTabelle.Rows.Count; h++)
            {
                if (Id == passwortTabelle.Rows[h-1]["Id"].ToString())
                {
                    passwortTabelle.Rows[h-1].Delete();
                }
              
            }
            passwortTabelle.WriteXml("XMLFile1.xml");

            foreach (DataRow dr in PasswortTabelle.Rows)
            {
                List1.Add(new Model1(id = Convert.ToString(dr[0]),
                   dienst = Convert.ToString(dr[1]),
                   nutzername = Convert.ToString(dr[2]),
                   passwort = Convert.ToString(dr[3])));

            }
        }
    }
}
