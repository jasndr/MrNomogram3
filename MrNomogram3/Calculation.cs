// Decompiled with JetBrains decompiler
// Type: MrNomogram.Calculation
// Assembly: MrNomogram, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null
// MVID: D240C00C-4280-4DCF-93B4-1E740A09BF1A
// Assembly location: C:\Users\jdelosr\source\repos\MrNomogram\bin\MrNomogram.dll

namespace MrNomogram3
{
    public class Calculation
    {
        private float[] bSeriesL = new float[6]
        {
      4.65587f,
      0.00788f,
      -0.13163f,
      -0.32078f,
      0.01953f,
      0.02541f
        };
        private float[] bSeriesR = new float[6]
        {
      4.39581f,
      0.004f,
      -0.09572f,
      -0.34331f,
      0.02155f,
      0.03163f
        };
        private double[][] matrixL = new double[6][]
        {
      new double[6]
      {
        0.06607673,
        0.0002517907,
        -0.004389599,
        -0.002051872,
        -0.00081754,
        0.0004283182
      },
      new double[6]
      {
        0.0002517907,
        3.0826095E-06,
        -1.0774E-05,
        1.2916E-05,
        -3.868555E-06,
        -1.775993E-06
      },
      new double[6]
      {
        -0.004389599,
        -1.0774E-05,
        0.0063936279,
        -0.00156387,
        4.20222E-05,
        -3.7976E-05
      },
      new double[6]
      {
        -0.002051872,
        1.2916E-05,
        -0.00156387,
        0.0109201156,
        1.1885E-05,
        -4.9674E-05
      },
      new double[6]
      {
        -0.00081754,
        -3.868555E-06,
        4.20222E-05,
        1.1885E-05,
        1.09883E-05,
        -6.246837E-06
      },
      new double[6]
      {
        0.0004283182,
        -1.775993E-06,
        -3.7976E-05,
        -4.9674E-05,
        -6.246837E-06,
        1.75345E-05
      }
        };
        private double[][] matrixR = new double[6][]
        {
      new double[6]
      {
        0.0679924289,
        0.0002582103,
        -0.004541722,
        -0.002134815,
        -0.000840522,
        0.0004413908
      },
      new double[6]
      {
        0.0002582103,
        3.1660138E-06,
        -1.1238E-05,
        1.31574E-05,
        -3.965194E-06,
        -1.835877E-06
      },
      new double[6]
      {
        -0.004541722,
        -1.1238E-05,
        0.0065940488,
        -0.00161467,
        4.35762E-05,
        -3.9208E-05
      },
      new double[6]
      {
        -0.002134815,
        1.31574E-05,
        -0.00161467,
        0.011262364,
        1.25642E-05,
        -5.1287E-05
      },
      new double[6]
      {
        -0.000840522,
        -3.965194E-06,
        4.35762E-05,
        1.25642E-05,
        1.12882E-05,
        -6.436596E-06
      },
      new double[6]
      {
        0.0004413908,
        -1.835877E-06,
        -3.9208E-05,
        -5.1287E-05,
        -6.436596E-06,
        1.80862E-05
      }
        };
        private float s2L = 0.5343f;
        private float s2R = 0.55115f;
        private float[] xSeries = new float[6]
        {
      1f,
      0.0f,
      0.0f,
      0.0f,
      0.0f,
      0.0f
        };

        public Calculation(int month, int gender, int race, float cm, float kg)
        {
            this.xSeries[1] = (float)month;
            this.xSeries[2] = (float)gender;
            this.xSeries[3] = (float)race;
            this.xSeries[4] = cm;
            this.xSeries[5] = kg;
        }

        public float estimateSize(char c)
        {
            float num = 0.0f;
            switch (c)
            {
                case 'L':
                case 'l':
                    for (int index = 0; index < 6; ++index)
                        num += this.xSeries[index] * this.bSeriesL[index];
                    break;
                case 'R':
                case 'r':
                    for (int index = 0; index < 6; ++index)
                        num += this.xSeries[index] * this.bSeriesR[index];
                    break;
                default:
                    num = 0.0f;
                    break;
            }
            return num;
        }

        public float estimateVar(char c)
        {
            float num1 = 0.0f;
            float num2 = 0.0f;
            float num3;
            switch (c)
            {
                case 'L':
                case 'l':
                    for (int index1 = 0; index1 < 6; ++index1)
                    {
                        num1 += this.xSeries[index1] * this.xSeries[index1] * (float)this.matrixL[index1][index1];
                        for (int index2 = index1 + 1; index2 < 6; ++index2)
                            num2 += this.xSeries[index1] * this.xSeries[index2] * (float)this.matrixL[index1][index2];
                    }
                    num3 = num1 + 2f * num2 + this.s2L;
                    break;
                case 'R':
                case 'r':
                    for (int index1 = 0; index1 < 6; ++index1)
                    {
                        num1 += this.xSeries[index1] * this.xSeries[index1] * (float)this.matrixR[index1][index1];
                        for (int index2 = index1 + 1; index2 < 6; ++index2)
                            num2 += this.xSeries[index1] * this.xSeries[index2] * (float)this.matrixR[index1][index2];
                    }
                    num3 = num1 + 2f * num2 + this.s2R;
                    break;
                default:
                    num3 = 0.0f;
                    break;
            }
            return num3;
        }
    }
}
