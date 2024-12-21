'''pip install pandas
pip install pandas profiling
pip install ydata_profiling'''

import pandas as pd
from pandas_profiling import ProfileReport

df = pd.read_excel(r"File Path.xlsx")
print(df)

Profile = ProfileReport(df)
Profile.to_file(output_file= r"Where to Save file Path.html")