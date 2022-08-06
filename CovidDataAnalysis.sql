select * 
from covid_project.coviddeaths
where continent is not null
order by 3,4 ;

SELECT 
    *
FROM
    covid_project.covidvaccinations
    where continent is not null

ORDER BY 3 , 4;
-- converting all empty cells into NULL

set sql_safe_updates=0;
update covid_project.coviddeaths
set new_cases_smoothed=if(new_cases_smoothed='',NULL,new_cases_smoothed),total_deaths=if(total_deaths='',NULL,total_deaths), new_deaths=if(new_deaths='',NULL,new_deaths), 
new_deaths_smoothed=if(new_deaths_smoothed='',NULL,new_deaths_smoothed), new_cases_smoothed_per_million=if(new_cases_smoothed_per_million='',NULL,new_cases_smoothed_per_million),
 total_deaths_per_million=if(total_deaths_per_million='',NULL,total_deaths_per_million), new_deaths_per_million=if(new_deaths_per_million='',NULL,new_deaths_per_million), 
 new_deaths_smoothed_per_million=if(new_deaths_smoothed_per_million='',NULL,new_deaths_smoothed_per_million), reproduction_rate=if(reproduction_rate='',NULL,reproduction_rate),
  icu_patients=if(icu_patients='',NULL,icu_patients),icu_patients_per_million=if(icu_patients_per_million='',NULL,icu_patients_per_million),
  hosp_patients=if(hosp_patients='',NULL,hosp_patients), hosp_patients_per_million=if(hosp_patients_per_million='',NULL,hosp_patients_per_million), weekly_icu_admissions=if(weekly_icu_admissions='',NULL,weekly_icu_admissions),
  weekly_icu_admissions_per_million=if(weekly_icu_admissions_per_million='',NULL,weekly_icu_admissions_per_million), weekly_hosp_admissions=if(weekly_hosp_admissions='',NULL,weekly_hosp_admissions),
  weekly_hosp_admissions_per_million=if(weekly_hosp_admissions_per_million='',NULL,weekly_hosp_admissions_per_million),new_tests=if(new_tests='',NULL,new_tests),
  total_tests=if(total_tests='',NULL,total_tests), total_tests_per_thousand=if(total_tests_per_thousand='',NULL,total_tests_per_thousand), new_tests_per_thousand=if(new_tests_per_thousand='',NULL,new_tests_per_thousand),
  new_tests_smoothed=if(new_tests_smoothed='',NULL,new_tests_smoothed), new_tests_smoothed_per_thousand=if(new_tests_smoothed_per_thousand='',NULL,new_tests_smoothed_per_thousand),positive_rate=if(positive_rate='',NULL,positive_rate),
  tests_per_case=if(tests_per_case='',NULL,tests_per_case), tests_units=if(tests_units='',NULL,tests_units), total_vaccinations=if(total_vaccinations='',NULL,total_vaccinations), people_vaccinated=if(people_vaccinated='',NULL,people_vaccinated),
  people_fully_vaccinated=if(people_fully_vaccinated='',NULL,people_fully_vaccinated), new_vaccinations_smoothed=if(new_vaccinations_smoothed='',NULL,new_vaccinations_smoothed), new_vaccinations=if(new_vaccinations='',NULL,new_vaccinations),
  total_vaccinations_per_hundred=if(total_vaccinations_per_hundred='',NULL,total_vaccinations_per_hundred), people_vaccinated_per_hundred=if(people_vaccinated_per_hundred='',NULL,people_vaccinated_per_hundred), 
  people_fully_vaccinated_per_hundred=if(people_fully_vaccinated_per_hundred='',NULL,people_fully_vaccinated_per_hundred), new_vaccinations_smoothed_per_million=if(new_vaccinations_smoothed_per_million='',NULL,new_vaccinations_smoothed_per_million), 
  stringency_index=if(stringency_index='',NULL,stringency_index), population=if(population='',NULL,population), population_density=if(population_density='',NULL,population_density), median_age=if(median_age='',NULL,median_age), 
  aged_65_older=if(aged_65_older='',NULL,aged_65_older), aged_70_older=if(aged_70_older='',NULL,aged_70_older), gdp_per_capita=if(gdp_per_capita='',NULL,gdp_per_capita), extreme_poverty=if(extreme_poverty='',NULL,extreme_poverty), cardiovasc_death_rate=if(cardiovasc_death_rate='',NULL,cardiovasc_death_rate), 
  diabetes_prevalence=if(diabetes_prevalence='',NULL,diabetes_prevalence), female_smokers=if(female_smokers='',NULL,female_smokers), male_smokers=if(male_smokers='',NULL,male_smokers), handwashing_facilities=if(handwashing_facilities='',NULL,handwashing_facilities), hospital_beds_per_thousand=if(hospital_beds_per_thousand='',NULL,hospital_beds_per_thousand),
  life_expectancy=if(life_expectancy='',NULL,life_expectancy), human_development_index=if(human_development_index='',NULL,human_development_index);
  
  update covid_project.covidvaccinations
  set new_tests=if(new_tests='',NULL,new_tests),
  total_tests=if(total_tests='',NULL,total_tests), total_tests_per_thousand=if(total_tests_per_thousand='',NULL,total_tests_per_thousand), new_tests_per_thousand=if(new_tests_per_thousand='',NULL,new_tests_per_thousand),
  new_tests_smoothed=if(new_tests_smoothed='',NULL,new_tests_smoothed), new_tests_smoothed_per_thousand=if(new_tests_smoothed_per_thousand='',NULL,new_tests_smoothed_per_thousand),positive_rate=if(positive_rate='',NULL,positive_rate),
  tests_per_case=if(tests_per_case='',NULL,tests_per_case), tests_units=if(tests_units='',NULL,tests_units), total_vaccinations=if(total_vaccinations='',NULL,total_vaccinations), people_vaccinated=if(people_vaccinated='',NULL,people_vaccinated),
  people_fully_vaccinated=if(people_fully_vaccinated='',NULL,people_fully_vaccinated), new_vaccinations_smoothed=if(new_vaccinations_smoothed='',NULL,new_vaccinations_smoothed), new_vaccinations=if(new_vaccinations='',NULL,new_vaccinations),
  total_vaccinations_per_hundred=if(total_vaccinations_per_hundred='',NULL,total_vaccinations_per_hundred), people_vaccinated_per_hundred=if(people_vaccinated_per_hundred='',NULL,people_vaccinated_per_hundred), 
  people_fully_vaccinated_per_hundred=if(people_fully_vaccinated_per_hundred='',NULL,people_fully_vaccinated_per_hundred), new_vaccinations_smoothed_per_million=if(new_vaccinations_smoothed_per_million='',NULL,new_vaccinations_smoothed_per_million), 
  stringency_index=if(stringency_index='',NULL,stringency_index), population_density=if(population_density='',NULL,population_density), median_age=if(median_age='',NULL,median_age), 
  aged_65_older=if(aged_65_older='',NULL,aged_65_older), aged_70_older=if(aged_70_older='',NULL,aged_70_older), gdp_per_capita=if(gdp_per_capita='',NULL,gdp_per_capita), extreme_poverty=if(extreme_poverty='',NULL,extreme_poverty), cardiovasc_death_rate=if(cardiovasc_death_rate='',NULL,cardiovasc_death_rate), 
  diabetes_prevalence=if(diabetes_prevalence='',NULL,diabetes_prevalence), female_smokers=if(female_smokers='',NULL,female_smokers), male_smokers=if(male_smokers='',NULL,male_smokers), handwashing_facilities=if(handwashing_facilities='',NULL,handwashing_facilities), hospital_beds_per_thousand=if(hospital_beds_per_thousand='',NULL,hospital_beds_per_thousand),
  life_expectancy=if(life_expectancy='',NULL,life_expectancy), human_development_index=if(human_development_index='',NULL,human_development_index);
  
  set sql_safe_updates=1;
  
  -- selecting some data to use
  
  select location,date,total_cases,new_cases,total_deaths,population
  from covid_project.coviddeaths
  where continent is not null
  order by 1,2;
  
  -- Total cases vs total deaths
  -- it basically shows u the likelihood of dying if u get contracted by covid in a country 
  select location,date,total_cases,total_deaths,(total_deaths/total_cases)*100 as DeathPercentage
  from covid_project.coviddeaths
  where location="australia"
  and continent is not null
  order by 1,2;
  
  -- Total cases vs population
  -- shows the percentage of population who got covid
  select location,date,total_cases,population,(total_cases/population)*100 as AffectedPercentage
  from covid_project.coviddeaths
  where location="india" and continent is not null
  order by 1,2;
  
  -- looking at the highest infection rate compared to population
  select location,max(total_cases) as HighestInfectionCount,population,max((total_cases/population))*100 as MaxAffectedPercentage
  from covid_project.coviddeaths
  -- where location like '%states'
  group by location, population
  order by MaxAffectedPercentage desc;
  
  -- countries with highest death count per population
  select location, MAX(CAST(total_deaths as unsigned)) as TotalDeathCount
  from covid_project.coviddeaths
  where continent is not null
  group by location
  order by TotalDeathCount desc;
  
  -- continents with the highest death count per population
  SELECT 
    continent,
    MAX(CAST(total_deaths AS UNSIGNED)) AS TotalDeathCount
FROM
    covid_project.coviddeaths
WHERE
    continent IS NOT NULL
GROUP BY continent
ORDER BY TotalDeathCount DESC;
  
  -- GLOBAL NUMBERS
  -- total cases and deaths per date across the world 
  select  date, sum(new_cases) as total_cases, sum(cast(new_deaths as unsigned)) as total_deaths, sum(cast(new_deaths as unsigned))/sum(new_cases)*100 as DeathPercentage
  from covid_project.coviddeaths
  where continent is not null
  group by date
  order by 1, 2;

  
  -- Total Population vs Vaccinations
-- Shows Percentage of Population that has recieved at least one Covid Vaccine

SELECT 
    coviddeaths.continent,
    coviddeaths.location,
    coviddeaths.date,
    coviddeaths.population,
    covidvaccinations.new_vaccinations, SUM(cast(covidvaccinations.new_vaccinations as unsigned)) over (partition by coviddeaths.location 
    order by coviddeaths.location, coviddeaths.date) as RollingPeopleVaccinated
    
FROM
    covid_project.coviddeaths 
        JOIN
    covid_project.covidvaccinations  
    ON coviddeaths.location = covidvaccinations.location
        AND coviddeaths.date = covidvaccinations.date
WHERE
    coviddeaths.continent IS NOT NULL
    
ORDER BY 2 , 3;


-- Using CTE to perform Calculation on Partition By in previous query
with PopvsVac (continent, location, date, population, new_vaccinations, RollingPeopleVaccinated)
as(
SELECT 
    coviddeaths.continent,
    coviddeaths.location,
    coviddeaths.date,
    coviddeaths.population,
    covidvaccinations.new_vaccinations, SUM(cast(covidvaccinations.new_vaccinations as unsigned)) over (partition by coviddeaths.location 
    order by coviddeaths.location, coviddeaths.date) as RollingPeopleVaccinated
    
FROM
    covid_project.coviddeaths 
        JOIN
    covid_project.covidvaccinations  
    ON coviddeaths.location = covidvaccinations.location
        AND coviddeaths.date = covidvaccinations.date
WHERE
    coviddeaths.continent IS NOT NULL
    
-- ORDER BY 2 , 3
)
select * , (RollingPeopleVaccinated/population)*100
from PopvsVac;

-- Using Temp Table to perform Calculation on Partition By in previous query
create Table #PercentPopulationVaccinated
(
continent varchar(255),
location varchar(255),
date datetime,
population numeric,
new_vaccinations numeric,
RollingPeopleVaccinated numeric
)
insert into #PercentPopulationVaccinated
SELECT 
    coviddeaths.continent,
    coviddeaths.location,
    coviddeaths.date,
    coviddeaths.population,
    covidvaccinations.new_vaccinations, SUM(cast(covidvaccinations.new_vaccinations as unsigned)) over (partition by coviddeaths.location 
    order by coviddeaths.location, coviddeaths.date) as RollingPeopleVaccinated
    
FROM
    covid_project.coviddeaths 
        JOIN
    covid_project.covidvaccinations  
    ON coviddeaths.location = covidvaccinations.location
        AND coviddeaths.date = covidvaccinations.date
WHERE
    coviddeaths.continent IS NOT NULL
    
ORDER BY 2 , 3
select * , (RollingPeopleVaccinated/population)*100
from #PercentPopulationVaccinated;


-- Creating View to store data for later visualizations

Create View PercentPopulationVaccinated as
percentpopulationvaccinatedSELECT 
    coviddeaths.continent,
    coviddeaths.location,
    coviddeaths.date,
    coviddeaths.population,
    covidvaccinations.new_vaccinations, SUM(cast(covidvaccinations.new_vaccinations as unsigned)) over (partition by coviddeaths.location 
    order by coviddeaths.location, coviddeaths.date) as RollingPeopleVaccinated
    
FROM
    covid_project.coviddeaths 
        JOIN
    covid_project.covidvaccinations  
    ON coviddeaths.location = covidvaccinations.location
        AND coviddeaths.date = covidvaccinations.date
WHERE
    coviddeaths.continent IS NOT NULL
    
-- ORDER BY 2 , 3
