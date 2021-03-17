using System.Windows.Media;
using Notes.Utilities;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Notes.Tests.Utilities
{
    [TestClass]
    public class StringToColorExtensionMethodTests
    {
        [TestMethod]
        public void ShouldConvertACorrectStringToColor()
        {
            var stringColor = "#FFFFAAFF";
            Color color = stringColor.ToColor();

            color.ShouldEqual(stringColor.ToColor());
            Assert.AreNotSame(color, Colors.White); // If the string is not a color, just return white.
        }

        [TestMethod]
        public void ANonColorShouldReturnWhite()
        {
            var stringMessage = "Hello, World";
            Color color = stringMessage.ToColor();

            color.ShouldEqual(stringMessage.ToColor());
        }
    }
}
