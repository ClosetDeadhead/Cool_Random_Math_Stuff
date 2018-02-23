
dv = 40;
%variable yard
chapters = 7;
l1 = 84;% i.e. number of ch1 problems
l2 = dv;
l3 = dv;
l4 = dv;
l5 = dv;
l6 = dv;
l7 = dv;
l8 = dv;
%...
%exitting variable yard

die = randi([1 chapters]);%random chapter
if(die == 1)%if chapter 1 chosen..
    y = randi([1 l1]);%chose random with chapter 1 total problem as max
else
    if(die == 2)
        y = randi([1 l2]);
    else
        if(die == 3)
            y = randi([1 l3]);
        else
            if(die == 4)
                y = randi([1 l4]);
            else
                if(die == 5)
                    y = randi([1 l5]);                 
                else
                    if(die == 6)
                        y = randi([1 l6]);
                    else
                        if(die == 7)
                            y = randi([1 l7]);
                        end
                    end
                end
            end
        end
    end
end

if(mod(y,2) == 0)%if even 
    z = randi([1 2]);%randomly
    if(z == 1)%go up or down 1..
        y = y + 1;
    else
        y = y - 1;
    end
end


%print output
fprintf 'Chapter:\n' 
string(die)
fprintf '\nproblem number:\n'
string(y)