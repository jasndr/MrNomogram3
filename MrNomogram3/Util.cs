// Decompiled with JetBrains decompiler
// Type: MrNomogram.Util
// Assembly: MrNomogram, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: D240C00C-4280-4DCF-93B4-1E740A09BF1A
// Assembly location: C:\Users\jdelosr\source\repos\MrNomogram\bin\MrNomogram.dll

using System.Collections;

namespace MrNomogram3
{
    public class Util
    {
        public ArrayList listYears()
        {
            ArrayList arrayList = new ArrayList();
            for (int index = 0; index < 19; ++index)
                arrayList.Add((object)("" + (object)index));
            return arrayList;
        }

        public ArrayList listMonths()
        {
            ArrayList arrayList = new ArrayList();
            for (int index = 0; index < 12; ++index)
                arrayList.Add((object)("" + (object)index));
            return arrayList;
        }

        public ArrayList listFeet()
        {
            ArrayList arrayList = new ArrayList();
            for (int index = 0; index < 10; ++index)
                arrayList.Add((object)("" + (object)index));
            return arrayList;
        }

        public ArrayList listInches()
        {
            ArrayList arrayList = new ArrayList();
            for (int index = 0; index < 12; ++index)
                arrayList.Add((object)("" + (object)index));
            return arrayList;
        }
    }
}
