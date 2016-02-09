﻿using System.Text;

namespace EvilDICOM.Core.IO.Data
{
    public class DICOMString
    {
        public static string Read(byte[] data)
        {
            var enc = Encoding.UTF8;
            return enc.GetString(data).TrimEnd(new[] {'\0'}).TrimEnd(new[] {' '});
        }

        public static byte[] Write(string data)
        {
            var ascii = Encoding.UTF8;

            if (IsEven(data))
            {
                return ascii.GetBytes(data);
            }
            return PadOddBytes(ascii, data);
        }

        private static bool IsEven(string data)
        {
            return data.Length%2 == 0;
        }

        private static byte[] PadOddBytes(Encoding ascii, string data)
        {
            return ascii.GetBytes(data + '\0');
        }
    }
}