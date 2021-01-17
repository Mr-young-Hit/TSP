function [ output_args ] = paint( cities, pop, minPath, totalDistances,gen)
    gNumber=gen;
    [~, length] = size(cities);
    xDots = cities(1,:);
    yDots = cities(2,:);
    %figure(1);
    title('�Ŵ��㷨-TSP');
    plot(xDots,yDots, 's', 'MarkerSize', 8, 'MarkerFaceColor', 'blue');%�Ļ�ͼ�ͺ�
    axis equal
    hold on
    [minPathX,~] = find(totalDistances==minPath,1, 'first');
    bestPopPath = pop(minPathX, :);
    bestX = zeros(1,length);
    bestY = zeros(1,length);
    for j=1:length
       bestX(1,j) = cities(1,bestPopPath(1,j));
       bestY(1,j) = cities(2,bestPopPath(1,j));
    end
    title('�Ŵ��㷨-TSP');
    plot(bestX(1,:),bestY(1,:), 'black', 'LineWidth', 1.25);
    legend('����', '·��');
    axis equal
    grid on
    %text(5,0,sprintf('��������: %d ��·������: %.2f',gNumber, minPath),'FontSize',10);
    drawnow
    hold off
end