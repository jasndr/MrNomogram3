// Decompiled with JetBrains decompiler
// Type: MrNomogram.Conversion
// Assembly: MrNomogram, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: D240C00C-4280-4DCF-93B4-1E740A09BF1A
// Assembly location: C:\Users\jdelosr\source\repos\MrNomogram\bin\MrNomogram.dll

namespace MrNomogram3
{
    public class Conversion
    {
        public int ageTransform(int year, int month)
        {
            return 12 * year + month;
        }

        public float heightTransform(int feet, int inch)
        {
            return (float)(12 * feet + inch) * 2.54f;
        }

        public float weightTransform(float pound)
        {
            return 0.4536f * pound;
        }

        public int genderTransform(string g)
        {
            return string.Compare(g.ToLower(), "male") != 0 ? 0 : 1;
        }

        public int raceTransform(string r)
        {
            return string.Compare(r.ToLower(), "caucasian") != 0 ? 1 : 0;
        }

        public char locationTransform(string loc)
        {
            return string.Compare(loc.ToLower(), "left") != 0 ? 'R' : 'L';
        }

        public float truncateFloat(float input)
        {
            return (float)(int)(100.0 * (double)input + 0.5) / 100f;
        }
    }
}
