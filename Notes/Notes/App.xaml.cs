using System.Globalization;
using System.Threading;
using System.Windows;
using System.Windows.Markup;
using GalaSoft.MvvmLight.Threading;

namespace Notes
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        private static void InitializeCultures(CultureInfo cultureInfo)
        {
            Thread.CurrentThread.CurrentCulture = cultureInfo;
            Thread.CurrentThread.CurrentUICulture = cultureInfo;
            FrameworkElement.LanguageProperty.OverrideMetadata(typeof(FrameworkElement), new FrameworkPropertyMetadata(
                XmlLanguage.GetLanguage(CultureInfo.CurrentCulture.IetfLanguageTag)));
        }

        static App()
        {
            InitializeCultures(new CultureInfo(/*"de-de"*/"nl-be"));
            DispatcherHelper.Initialize();
        }
    }
}
