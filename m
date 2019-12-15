Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D5111FA8A
	for <lists+linux-rockchip@lfdr.de>; Sun, 15 Dec 2019 19:52:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T3AR34s4s5Utk/zqbgcotxZcG9gt110oAhDSdmKZHQc=; b=t2sBTDacGbOQ18
	hXXN12QLTa9NftbPH6Ls7tJiaovfZ4kt3Lcn/rEOS7j8nwktAJwU/p9ThztREGyoh/IFokvFlZxUF
	V7eisdD4wBqb3w4BkH7b3cBlkx8EfrG/WQdndIySc76tITq0TjjcuH5sBiMx+ISC0kOsaziMPQnal
	doOPGywksqFEXnlfi90vXIVT8uF3Cnz8mzgNb9Xejfezyaz5FObJf9MN6RwQIf9lRtEHrzGzUTL/b
	SeHWZx4IUc9n9AxvGzksdrTXp98oyT6fhdWVpqHY3pzcDqNTTNsQ/sVdBs/MX6MawW8JIn2dYeASP
	6fjbeqxL0g9D3E9Y9q6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igZ00-0000zj-9g; Sun, 15 Dec 2019 18:52:12 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igYzw-0000yw-6P
 for linux-rockchip@lists.infradead.org; Sun, 15 Dec 2019 18:52:10 +0000
Received: by mail-io1-xd43.google.com with SMTP id a22so4683930ios.3
 for <linux-rockchip@lists.infradead.org>; Sun, 15 Dec 2019 10:52:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=++SuXPbeJ8HW/JTgrnYki41wnpjCIWM0WgXunOlEX7k=;
 b=mYiS+9CnqxC+9BHQ+xrob3lut2K9Kaa4lQADI+64wCUWSoj6Rww9Br8GIFc6NwaNRc
 Uc0h/21rVPStoUqk3tiELHRKHtBpNDjAtsQ2wUTEdAHweASUFY2+le6lpi94wjUf5Yi2
 B+e+iCpyg3wY7WDMzwMgci4b4XrzWTnecUQ4TwNWCcOBOenbs28IjmEbHYRZhRWGb6Tg
 vvWRWxsrKhzbj1485dNt7H4YCK3RFlKM2jz+a0vLoIRvIDeJQ1E3YOQsFnwNCPZ9/acm
 TZSayrNOmYoRc/JBwmICnp6w2U6BR+mabsD2wfplhGoWa/aN2D1TGyXvhLCIkkWJkJVs
 BMOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=++SuXPbeJ8HW/JTgrnYki41wnpjCIWM0WgXunOlEX7k=;
 b=D62cBo0CG0wXVp/kAA5nwhsONIYoQcVUyiQIXntxfQDGP/23P6Kqo4MZhPZt+UYDZu
 j4ydTWN94pat2o80weBbfzhZrSqBV08IGg5WnyPgY+VH4AoGgpR3cfmS2Du8dIhQFdEC
 t7QRqcyscs/u487ojTCMd4xVJnAfsmGkQYSMVM3fskBfZvtXROwBMtD41KxZNrJXDW7Y
 XpqqoYCMmCm0N1ATKG9b/nB7HISCzU7kHsVIY37ddHNftrp8EjJrTFoiGyChadgk38EJ
 XZP1XV1cEj+akAouALFCahu+iF/T4y5TXn5X5Exo0K7D5qyEGMVVKp9oCKbQOVK7vqwi
 qrKw==
X-Gm-Message-State: APjAAAWvNsD6sbbb+JRAurXFz0kmIl6wsQqFujlv+0yd+i+5wqvrmnHy
 c4jfYmq1W4pXfAMksnIBEkeedZFKsVEXnKnrCRc=
X-Google-Smtp-Source: APXvYqx6vaHHB+YvwrXYvMgA1CNMQ6SU9HLtubdKaBsY7EXiHjqe3Eo/svLz6iEm7bJuMSY+KlZkIPgH6y+Rn6xxAAI=
X-Received: by 2002:a02:8817:: with SMTP id r23mr9223515jai.120.1576435922826; 
 Sun, 15 Dec 2019 10:52:02 -0800 (PST)
MIME-Version: 1.0
References: <cover.1575932654.git.robin.murphy@arm.com>
 <8642045f0657c9e782cd698eb08777c9d4c10c8d.1575932654.git.robin.murphy@arm.com>
In-Reply-To: <8642045f0657c9e782cd698eb08777c9d4c10c8d.1575932654.git.robin.murphy@arm.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 16 Dec 2019 00:21:50 +0530
Message-ID: <CANAwSgTtzAZJqpsD7uVKskTnDmrT1bs=JuHxnPrkpQKtnZLhvQ@mail.gmail.com>
Subject: Re: [PATCH 4/4] mfd: rk808: Convert RK805 to syscore/PM ops
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_105208_266239_303EC6F4 
X-CRM114-Status: GOOD (  21.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-rockchip@lists.infradead.org, Soeren Moch <smoch@web.de>,
 Lee Jones <lee.jones@linaro.org>, Linux Kernel <linux-kernel@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Robin

On Tue, 10 Dec 2019 at 18:54, Robin Murphy <robin.murphy@arm.com> wrote:
>
> RK805 has the same kind of dual-role sleep/shutdown pin as RK809/RK817,
> so it makes little sense for the driver to have to have two completely
> different mechanisms to handle essentially the same thing. Bring RK805
> in line with the RK809/RK817 flow to clean things up.
>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  drivers/mfd/rk808.c       | 58 +++++++++++++++++----------------------
>  include/linux/mfd/rk808.h |  1 -
>  2 files changed, 25 insertions(+), 34 deletions(-)
>
> diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> index 657b8baa3b8a..e88bdb889d3a 100644
> --- a/drivers/mfd/rk808.c
> +++ b/drivers/mfd/rk808.c
> @@ -186,7 +186,6 @@ static const struct rk808_reg_data rk805_pre_init_reg[] = {
>         {RK805_BUCK4_CONFIG_REG, RK805_BUCK3_4_ILMAX_MASK,
>                                  RK805_BUCK4_ILMAX_3500MA},
>         {RK805_BUCK4_CONFIG_REG, BUCK_ILMIN_MASK, BUCK_ILMIN_400MA},
> -       {RK805_GPIO_IO_POL_REG, SLP_SD_MSK, SLEEP_FUN},
>         {RK805_THERMAL_REG, TEMP_HOTDIE_MSK, TEMP115C},
>  };
>
> @@ -449,21 +448,6 @@ static const struct regmap_irq_chip rk818_irq_chip = {
>
>  static struct i2c_client *rk808_i2c_client;
>
> -static void rk805_device_shutdown_prepare(void)
> -{
> -       int ret;
> -       struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
> -
> -       if (!rk808)
> -               return;
> -
> -       ret = regmap_update_bits(rk808->regmap,
> -                                RK805_GPIO_IO_POL_REG,
> -                                SLP_SD_MSK, SHUTDOWN_FUN);
> -       if (ret)
> -               dev_err(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
> -}
> -
>  static void rk808_device_shutdown(void)
>  {
>         int ret;
> @@ -499,17 +483,29 @@ static void rk8xx_syscore_shutdown(void)
>         struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
>         int ret;
>
> -       if (system_state == SYSTEM_POWER_OFF &&
> -           (rk808->variant == RK809_ID || rk808->variant == RK817_ID)) {
> +       if (system_state != SYSTEM_POWER_OFF)
> +              return;
> +
> +       switch (rk808->variant) {
> +       case RK805_ID:
> +               ret = regmap_update_bits(rk808->regmap,
> +                                        RK805_GPIO_IO_POL_REG,
> +                                        SLP_SD_MSK,
> +                                        SHUTDOWN_FUN);
> +               break;
> +       case RK809_ID:
> +       case RK817_ID:
>                 ret = regmap_update_bits(rk808->regmap,
>                                          RK817_SYS_CFG(3),
>                                          RK817_SLPPIN_FUNC_MSK,
>                                          SLPPIN_DN_FUN);
> -               if (ret) {
> -                       dev_warn(&rk808_i2c_client->dev,
> -                                "Cannot switch to power down function\n");
> -               }
> +               break;
> +       default:
> +               return;
>         }
> +       if (ret)
> +               dev_warn(&rk808_i2c_client->dev,
> +                        "Cannot switch to power down function\n");
>  }
>
>  static struct syscore_ops rk808_syscore_ops = {
> @@ -579,7 +575,6 @@ static int rk808_probe(struct i2c_client *client,
>                 nr_pre_init_regs = ARRAY_SIZE(rk805_pre_init_reg);
>                 cells = rk805s;
>                 nr_cells = ARRAY_SIZE(rk805s);
> -               rk808->pm_pwroff_prep_fn = rk805_device_shutdown_prepare;
>                 break;
>         case RK808_ID:
>                 rk808->regmap_cfg = &rk808_regmap_config;
> @@ -658,10 +653,8 @@ static int rk808_probe(struct i2c_client *client,
>                 goto err_irq;
>         }
>
> -       if (of_property_read_bool(np, "rockchip,system-power-controller")) {
> +       if (of_property_read_bool(np, "rockchip,system-power-controller"))
>                 pm_power_off = rk808_device_shutdown;
> -               pm_power_off_prepare = rk808->pm_pwroff_prep_fn;
> -       }
>
>         return 0;
>
> @@ -686,13 +679,6 @@ static int rk808_remove(struct i2c_client *client)
>         if (pm_power_off == rk808_device_shutdown)
>                 pm_power_off = NULL;
>
> -       /**
> -        * As above, check if the pointer is set by us before overwrite.
> -        */
> -       if (rk808->pm_pwroff_prep_fn &&
> -           pm_power_off_prepare == rk808->pm_pwroff_prep_fn)
> -               pm_power_off_prepare = NULL;
> -
>         return 0;
>  }
>
> @@ -702,6 +688,12 @@ static int __maybe_unused rk8xx_suspend(struct device *dev)
>         int ret = 0;
>
>         switch (rk808->variant) {
> +       case RK805_ID:
> +               ret = regmap_update_bits(rk808->regmap,
> +                                        RK805_GPIO_IO_POL_REG,
> +                                        SLP_SD_MSK,
> +                                        SLEEP_FUN);
> +               break;
>         case RK809_ID:
>         case RK817_ID:
>                 ret = regmap_update_bits(rk808->regmap,
> diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
> index b038653fa87e..e07f6e61cd38 100644
> --- a/include/linux/mfd/rk808.h
> +++ b/include/linux/mfd/rk808.h
> @@ -620,6 +620,5 @@ struct rk808 {
>         long                            variant;
>         const struct regmap_config      *regmap_cfg;
>         const struct regmap_irq_chip    *regmap_irq_chip;
> -       void                            (*pm_pwroff_prep_fn)(void);
>  };
>  #endif /* __LINUX_REGULATOR_RK808_H */
> --
> 2.17.1
>

I am sill getting the kernel warning on issue poweroff see below.
on my Rock960 Model A
I feel the reason for this is we now have two poweroff callback
1  pm_power_off = rk808_device_shutdown
2  rk8xx_syscore_shutdown

In my investigation earlier common function for shutdown solve
the issue of clean shutdown.

for *rockchip,system-power-controller* dts property
we can used flags if check if this property support clean shutdown
for that device.

[  565.009291] xhci-hcd xhci-hcd.0.auto: USB bus 5 deregistered
[  565.010179] reboot: Power down
[  565.010536] ------------[ cut here ]------------
[  565.010940] No atomic I2C transfer handler for 'i2c-0'
[  565.011437] WARNING: CPU: 0 PID: 1 at drivers/i2c/i2c-core.h:40
i2c_transfer+0xe4/0xf8
[  565.012126] Modules linked in: snd_soc_hdmi_codec dw_hdmi_i2s_audio
rockchipdrm nvme analogix_dp nvme_core brcmfmac hci_uart dw_mipi_dsi
dw_hdmi btbcm cec panfrost bluetooth drm_kms_helper brcmutil gpu_sched
cfg80211 crct10dif_ce snd_soc_rockchip_i2s snd_soc_simple_card drm
ecdh_generic snd_soc_rockchip_pcm snd_soc_simple_card_utils
phy_rockchip_pcie ecc rtc_rk808 rfkill rockchip_thermal
pcie_rockchip_host ip_tables x_tables ipv6 nf_defrag_ipv6
[  565.015578] CPU: 0 PID: 1 Comm: shutdown Not tainted
5.5.0-rc1-00292-gd46dd6369c55 #7
[  565.016260] Hardware name: 96boards Rock960 (DT)
[  565.016666] pstate: 60000085 (nZCv daIf -PAN -UAO)
[  565.017087] pc : i2c_transfer+0xe4/0xf8
[  565.017425] lr : i2c_transfer+0xe4/0xf8
[  565.017762] sp : ffff80001004baf0
[  565.018052] x29: ffff80001004baf0 x28: ffff00007d208000
[  565.018517] x27: 0000000000000000 x26: 0000000000000000
[  565.018982] x25: 0000000000000008 x24: 0000000000000000
[  565.019447] x23: ffff00007d208000 x22: ffff80001004bc64
[  565.019912] x21: ffff80001004bb48 x20: 0000000000000002
[  565.020377] x19: ffff000078502080 x18: 0000000000000010
[  565.020842] x17: 0000000000000001 x16: 0000000000000019
[  565.021307] x15: ffff00007d208470 x14: ffffffffffffffff
[  565.021772] x13: ffff80009004b857 x12: ffff80001004b860
[  565.022237] x11: ffff800011841000 x10: ffff800011a10658
[  565.022702] x9 : 0000000000000000 x8 : ffff800011a11000
[  565.023167] x7 : ffff800010697c78 x6 : 0000000000000262
[  565.023632] x5 : 0000000000000000 x4 : 0000000000000000
[  565.024096] x3 : 00000000ffffffff x2 : ffff800011841ab8
[  565.024561] x1 : 7b11701b0ae78800 x0 : 0000000000000000
[  565.025027] Call trace:
[  565.025246]  i2c_transfer+0xe4/0xf8
[  565.025556]  regmap_i2c_read+0x5c/0xa0
[  565.025886]  _regmap_raw_read+0xcc/0x138
[  565.026230]  _regmap_bus_read+0x3c/0x70
[  565.026568]  _regmap_read+0x60/0xe0
[  565.026875]  _regmap_update_bits+0xc8/0x108
[  565.027241]  regmap_update_bits_base+0x60/0x90
[  565.027633]  rk808_device_shutdown+0x6c/0x88
[  565.028010]  machine_power_off+0x24/0x30
[  565.028356]  kernel_power_off+0x64/0x70
[  565.028693]  __do_sys_reboot+0x15c/0x240
[  565.029038]  __arm64_sys_reboot+0x20/0x28
[  565.029390]  el0_svc_common.constprop.0+0x68/0x160
[  565.029811]  el0_svc_handler+0x20/0x80
[  565.030141]  el0_sync_handler+0x10c/0x180
[  565.030493]  el0_sync+0x140/0x180
[  565.030785] ---[ end trace 5167e842ce15f686 ]---

-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
