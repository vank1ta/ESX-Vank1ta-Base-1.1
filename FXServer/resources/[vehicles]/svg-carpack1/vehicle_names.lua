function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
	AddTextEntry("divo", "Bugatti Divo")  --1
	AddTextEntry("g500", "Mercedes G500") --2
    AddTextEntry("nh2r", "Ninja H2") --3
    AddTextEntry("yz450f", "Yamaha YZ450F") --4
    AddTextEntry("tmsm", "TM450 Supermoto") --5
    AddTextEntry("wraith", "Rolls Royce Wraith")  --6
    AddTextEntry("urus", "Lamborghini Urus") --7
    AddTextEntry("rmodsianr", "Lamborghini Sian") --8
    AddTextEntry("19gt500", "Ford Mustang Shelby") --9
    AddTextEntry("lamboavj", "Lamborghini Aventador SVJ")  --10
    AddTextEntry("DemonHawk", "Demonhawk")  --11
    AddTextEntry("911turbos", "Porsche 911 Turbo") --12
    AddTextEntry("MVISIONGT", "Mercedes-Benz AMG Vision GT") --13
    AddTextEntry("sv", "Lamborghini Aventador SV") --14
    AddTextEntry("GTRC", "Mercedes-Benz AMG GT-R") --15 --FOH
    AddTextEntry("SENNA", "McLaren Senna") --16
    AddTextEntry("C7", "Corvette C7") --17
    AddTextEntry("g63mg", "G63 Mansory") --18
    AddTextEntry("scaldarsi", "Maybach Emperor") --19
    AddTextEntry('dawn', 'Mansory RR Dawn') --20
    AddTextEntry('rmodjesko', 'Koenigsegg Jesko') --21 
    --AddTextEntry('rmodc63amg', 'Mercedes AMG C63') --22
    AddTextEntry('TR22', 'Tesla Roadster') --23
    AddTextEntry('rm3e36', 'BMW M3 E36') --24
    AddTextEntry('370z', 'Nissan 370z') --25
    AddTextEntry('EK9', 'Honda Civic EK9') --26
    AddTextEntry('lwhuracan', 'Liberty Walk Huracan') --27
    AddTextEntry('gtr', 'Nissan GTR') --28
    AddTextEntry('SRTDAY20', 'Charger Hellcat SRT') --29
    AddTextEntry('dcd', 'Dodge Demon SRT') --30
    AddTextEntry('rmodjeep', 'Jeep Grand Cherokee') --31 
    AddTextEntry('SheepyR8TT', 'Vorce Audi R8 TT') --32
    AddTextEntry('c7r', 'MA Corvette') --33
    AddTextEntry('wildtrak', 'Ford Bronco Wildtrak') --34
    AddTextEntry('lw458s', 'Cartel Ferrari') --35
    AddTextEntry('audir8lms2', 'Tsuki Audi') --36
    --AddTextEntry('alphagtr', 'Mario Drag GTR') --37
    AddTextEntry('rmodf40', 'Ferrari F40') --38 
    AddTextEntry('DragNova', 'KTM Drag Nova') --39
    AddTextEntry('rmodlego3', 'Lego Mini Cooper') --40 
    AddTextEntry('brzrbv3', 'MA BRZ') --41
    AddTextEntry('19tundra', 'Toyota Tundra') --42
    AddTextEntry('impalaf350', 'Lifted Ford F350') --43
    AddTextEntry('rmodrs6', 'Audi RS6') --44 add to shop
    AddTextEntry('rmodbacalar', 'Bentley Bacalar') --45 
    AddTextEntry('rmodmk7', 'Golf MK7 JP') --46 
    AddTextEntry('rmodm5e34', 'BMW M5 E34') --47 
    AddTextEntry('rmodcharger69', 'Dodge Charger RT69') --48
    AddTextEntry('rmodbugatti', 'MerryWeather Buggati') --49 
    AddTextEntry('rmodgtr50', 'Nissan GTR 50') --50
end)
