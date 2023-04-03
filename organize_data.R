# Read in the world bank data extract from the input directory with data on
# CO2 emissions per capita and GDP per capita in 2018

# Load libraries ----------------------------------------------------------
source("check_packages.R")


# Read in and organize data -----------------------------------------------

# NA value are recorded as .. and there is some garbage at the bottom of the
# file, so we need to use n_max to limit how many rows we read.
worldbank <- read_csv(here("input",
                           "d9ad0033-b09e-4ad8-9602-a296c21aef7a_Data.csv"),
                      na = "..", n_max=434) %>%
  # rename variables to something easier to work with and then drop any
  # variables we do not need.
  rename(country_name=`Country Name`, country_code=`Country Code`,
         series_code=`Series Code`, value=`2018 [YR2018]`) %>%
  select(country_name, country_code, series_code, value) %>%
  # Now reshape wider to get both variables on the same row
  pivot_wider(id_cols = c(country_name, country_code),
              names_from = series_code,
              values_from = value) %>%
  # rename the variables to something more intuitive
  rename(gdpcap = NY.GDP.PCAP.KD, co2cap = EN.ATM.CO2E.PC) %>%
  # drop any missing values
  drop_na()

# Save the data -----------------------------------------------------------

save(worldbank, file = here("output", "worldbank.RData"))
