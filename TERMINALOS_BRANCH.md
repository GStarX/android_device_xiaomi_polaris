# terminalos/lineage-23.2 —— Polaris-TerminalOS 设备树分支说明

本分支是 `LineageOS/android_device_xiaomi_polaris` 的 Fork 工作分支，只做**产品配置新增**，
不改动设备基础配置（`device.mk`、`BoardConfig.mk`、`lineage_polaris.mk`、`polaris-vendor.mk` 等）。

## 本分支新增内容

| 文件 | 说明 |
| --- | --- |
| `terminalos_polaris.mk` | 继承 `lineage_polaris.mk` 与 `vendor/terminalos/terminalos.mk`，定义 `terminalos_polaris` 产品 |
| `AndroidProducts.mk` | 在原有 `lineage_polaris.mk` 之外注册 `terminalos_polaris.mk` |
| `TERMINALOS_BRANCH.md` | 本文件 |

## 构建

```
lunch terminalos_polaris-userdebug
brunch terminalos_polaris
```

前置条件：

1. 已通过项目 local manifest 拉取 `vendor/terminalos`、`packages/apps/TerminalHome`（见
   https://github.com/GStarX/Polaris-TerminalOS 的 `local_manifests/terminalos.xml`）。
2. 已执行 `vendor/terminalos/scripts/fetch-termux.sh` 获取 Termux APK（不入库）。
3. 23.2 路线的内核与 vendor blobs 在项目 local manifest 中锁定为 `lineage-22.2`，
   属于实验性组合，**未验证**。

## 状态

**未构建、未实机验证。** 上游 `lineage-23.2` 分支与 `lineage-22.2` 内容相同，
polaris 目前没有任何 Android 16 适配提交；详见项目文档 `docs/00_上游核验报告.md`。

## 回滚

```
git checkout lineage-23.2   # 或删除 terminalos_polaris.mk 与 AndroidProducts.mk 中的注册行
```
