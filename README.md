# bonanza-scripts

*bonanza-scripts* is a set of scripts which may be useful for developers.

## replace-in-files.ps1
Have you ever faced with the situation when you need to implement some boilerplate functionality but there is no time to build some code generator? For example you have *productsRepository* and you want to add *salesRepository*. For both epositories the code will be the same except few places where variables (fields, method names, etc.) have different prefix. Probably you may want to copy already existing code replace old entities to new and thats all. To simplify the copying/replacing process you may use **replace-in-files-scripts**.
from 
```C#
...
public class TerritoriesRepository
{
   public Territory GetyId()
   {
   }
}
...
```
 to
```C#
...
public class ProjectsRepository
{   
   public Project GetyId()
   {
   }
}
...
```
