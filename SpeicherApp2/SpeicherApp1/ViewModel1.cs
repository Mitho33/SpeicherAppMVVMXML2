using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media;

namespace SpeicherApp1
{
    internal class ViewModel1
    {

        protected ObservableCollection<Model1> passwortListe = new ObservableCollection<Model1>();
        private Model1 model1 = new Model1("w", "w", "w", "w");
        public ObservableCollection<Model1> PasswortListe
        {
            get { return passwortListe; }
            set { passwortListe = value; }
        }

        public Model1 Model1
        {
            get { return model1; }
            set { model1 = value; }
        }
        public ViewModel1()
        {

            
                model1.Laden();
                passwortListe = model1.List1;
                AddFolderCommand = new DelegateCommand1(ExecuteAddFolderCommand, (x) => true);
                AddFolderCommand2 = new DelegateCommand1(ExecuteAddFolderCommand2, (x) => true);

        }

        public DelegateCommand1 AddFolderCommand { get; set; }
        public DelegateCommand1 AddFolderCommand2 { get; set; }

        public void ExecuteAddFolderCommand(object param)
        {
            model1.List1 = passwortListe;


            passwortListe.Clear();

            model1.Update(Model1.Id,Model1.Dienst,Model1.Nutzername,Model1.Passwort);
            
            
            MessageBox.Show("Update");
           
        }

        public void ExecuteAddFolderCommand2(object param)
        {


            model1.List1 = passwortListe;
            passwortListe.Clear();
            MessageBox.Show(Convert.ToString(model1.Id));
            model1.Loeschen(Convert.ToString(model1.Id));
            
           
        

        }





    }
}
