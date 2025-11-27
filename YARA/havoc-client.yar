rule havoc_client : c2 implant 
{
  
   meta:
      description = "Havoc C2 Demon Implant"
      author = "Van Khai (Coby) Nguyen"
      url = "https://github.com/HavocFramework/Havoc"
      
   strings:
      // Unique readable text inside the Havoc Demon implant
      $s1 = "Demon" nocase
      $s2 = "Havoc" nocase
      $s3 = "Havoc Demon" nocase
      $s4 = "github.com/HavocFramework/Havoc" nocase
      $s5 = "demon.syscalls" nocase
      $s6 = "demon.core" nocase
      $s7 = "demon.config" nocase
      // Binary byte patterns 
      $p1 = { 0F 05 C3 }
      $p2 = { 48 8D 0D ?? ?? ?? ?? E8 ?? ?? ?? ?? 48 89 }
      $p3 = { FF 15 ?? ?? ?? ?? 90 }
      $p4 = { 48 83 EC 28 48 8B 05 ?? ?? ?? ?? ?? 48 89 45 F8 }
      
   condition:
      any of ($p*) or any of ($s*)
}
