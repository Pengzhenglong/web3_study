// 导出默认组件 Footer，用于显示页面的底部内容
export default function MintERC20() {
  // 渲染组件内容
  return (
    <>
      {/* 使用 TailwindCSS 进行布局和样式设置 */}
      <div className="flex flex-col flex-grow justify-center items-center font-wq mb-12 mt-20 text-white">
        <div className="w-[640-px] text-center">
          {/* 标题：铸造 LuLuCoin */}
          <h1 className="text-6xl text-[#ff2c73]">铸造 LuLuCoin</h1>
      
     
              <p className="text-4xl mt-20 mb-12 animate-pulse">
                开始铸造你的第一个 LuLuCoin 代币吧!
              </p>
              {/* 输入框：输入用户想铸造的代币数量 */}
              <div className="flex justify-center mt-4">
                <input
                
                />
              </div>

              {/* 按钮：触发铸造代币 */}
              <div className="flex-col justify-center items-center mt-8">
                <button
                  className="bg-[#D6517D] rounded-md shadow-md text-2xl p-4 w-80"
                >
                  立即铸造！
                </button>
                {/* 显示当前用户的代币余额 */}
                <p className="t text-[#ff2c73] text-xl animate-pulse mt-4">
                  当前的 LuLuCoin 代币余额：{" "}
                
                </p>
              </div>

     
        </div>
      </div>
    </>
  );
}
