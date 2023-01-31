param($network, $server)

for ($x=1; $x -le 254; $x++)
{
    $address = $network+"."+$x
    Resolve-DnsName -DnsOnly $address -Server $server -ErrorAction Ignore | Select-Object Name, NameHost
}
