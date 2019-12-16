Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE73E11FB13
	for <lists+linux-rockchip@lfdr.de>; Sun, 15 Dec 2019 21:28:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPKK9cnn3aewbj6H1v4i3w1BRWtg9vu5OhXI2+g6Fzk=; b=OsAryHu5WPNM0m
	c7nAdlhgl/zcovyFTjgtLP4xVDkd32b2NGOYd9BjODoWTwlFEVGTfTeVNbMf5mN6tmRBKHzgdd9Uj
	eaMaaFdnDKkVe7YyZ53smvXnUmcp7OMGBIU3iIfXPN65UHLkSY3ZL8/m3+qmrEGRlgO0IsZx9YJ0U
	6mHFVxN+7bpYb/4DrMIvPKP6eKhkKKC0PWwEKOzvd65vH9xFXA3DNdys05F3OKH6tyA/X94Eb8mt+
	+6UQq0pj6FTiXL+JjOcqQUpXhx6Zb89HJkx+VAFozCmXvFaMjmayHbbbjlyqeWFRdJBHaHGC4Vbjs
	xBu6foQQxlzzZUKDlPzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igaUd-00057w-Ap; Sun, 15 Dec 2019 20:27:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igaUY-000577-HO
 for linux-rockchip@lists.infradead.org; Sun, 15 Dec 2019 20:27:53 +0000
Received: from ip5f5a5f74.dynamic.kabel-deutschland.de ([95.90.95.116]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1igaUO-00045X-OG; Sun, 15 Dec 2019 21:27:40 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH 4/4] mfd: rk808: Convert RK805 to syscore/PM ops
Date: Sun, 15 Dec 2019 21:27:40 +0100
Message-ID: <2681192.H4ySjFOPB8@diego>
In-Reply-To: <CANAwSgTtzAZJqpsD7uVKskTnDmrT1bs=JuHxnPrkpQKtnZLhvQ@mail.gmail.com>
References: <cover.1575932654.git.robin.murphy@arm.com>
 <8642045f0657c9e782cd698eb08777c9d4c10c8d.1575932654.git.robin.murphy@arm.com>
 <CANAwSgTtzAZJqpsD7uVKskTnDmrT1bs=JuHxnPrkpQKtnZLhvQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_122750_728840_5EE73E1D 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Lee Jones <lee.jones@linaro.org>, Soeren Moch <smoch@web.de>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Anand,

Am Sonntag, 15. Dezember 2019, 19:51:50 CET schrieb Anand Moon:
> On Tue, 10 Dec 2019 at 18:54, Robin Murphy <robin.murphy@arm.com> wrote:
> >
> > RK805 has the same kind of dual-role sleep/shutdown pin as RK809/RK817,
> > so it makes little sense for the driver to have to have two completely
> > different mechanisms to handle essentially the same thing. Bring RK805
> > in line with the RK809/RK817 flow to clean things up.
> >
> > Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> > ---

[...]

> I am sill getting the kernel warning on issue poweroff see below.
> on my Rock960 Model A
> I feel the reason for this is we now have two poweroff callback
> 1  pm_power_off = rk808_device_shutdown
> 2  rk8xx_syscore_shutdown

Nope, the issue is just the i2c subsystem complaining that the
Rocckhip i2c drives does not provide an atomic-transfer function, see
	"No atomic I2C transfer handler for 'i2c-0'"
in your warning.

Somewhere it was suggested that the current transfer function just
works as atomic as well.


> In my investigation earlier common function for shutdown solve
> the issue of clean shutdown.

This is simply a result of your syscore-shutdown function running way to
early, before the i2c subsystem switched to using atomic transfers.

This also indicates that this would really be way to early, as other parts
of the kernel could also still be running.

Heiko


> for *rockchip,system-power-controller* dts property
> we can used flags if check if this property support clean shutdown
> for that device.
> 
> [  565.009291] xhci-hcd xhci-hcd.0.auto: USB bus 5 deregistered
> [  565.010179] reboot: Power down
> [  565.010536] ------------[ cut here ]------------
> [  565.010940] No atomic I2C transfer handler for 'i2c-0'
> [  565.011437] WARNING: CPU: 0 PID: 1 at drivers/i2c/i2c-core.h:40
> i2c_transfer+0xe4/0xf8
> [  565.012126] Modules linked in: snd_soc_hdmi_codec dw_hdmi_i2s_audio
> rockchipdrm nvme analogix_dp nvme_core brcmfmac hci_uart dw_mipi_dsi
> dw_hdmi btbcm cec panfrost bluetooth drm_kms_helper brcmutil gpu_sched
> cfg80211 crct10dif_ce snd_soc_rockchip_i2s snd_soc_simple_card drm
> ecdh_generic snd_soc_rockchip_pcm snd_soc_simple_card_utils
> phy_rockchip_pcie ecc rtc_rk808 rfkill rockchip_thermal
> pcie_rockchip_host ip_tables x_tables ipv6 nf_defrag_ipv6
> [  565.015578] CPU: 0 PID: 1 Comm: shutdown Not tainted
> 5.5.0-rc1-00292-gd46dd6369c55 #7
> [  565.016260] Hardware name: 96boards Rock960 (DT)
> [  565.016666] pstate: 60000085 (nZCv daIf -PAN -UAO)
> [  565.017087] pc : i2c_transfer+0xe4/0xf8
> [  565.017425] lr : i2c_transfer+0xe4/0xf8
> [  565.017762] sp : ffff80001004baf0
> [  565.018052] x29: ffff80001004baf0 x28: ffff00007d208000
> [  565.018517] x27: 0000000000000000 x26: 0000000000000000
> [  565.018982] x25: 0000000000000008 x24: 0000000000000000
> [  565.019447] x23: ffff00007d208000 x22: ffff80001004bc64
> [  565.019912] x21: ffff80001004bb48 x20: 0000000000000002
> [  565.020377] x19: ffff000078502080 x18: 0000000000000010
> [  565.020842] x17: 0000000000000001 x16: 0000000000000019
> [  565.021307] x15: ffff00007d208470 x14: ffffffffffffffff
> [  565.021772] x13: ffff80009004b857 x12: ffff80001004b860
> [  565.022237] x11: ffff800011841000 x10: ffff800011a10658
> [  565.022702] x9 : 0000000000000000 x8 : ffff800011a11000
> [  565.023167] x7 : ffff800010697c78 x6 : 0000000000000262
> [  565.023632] x5 : 0000000000000000 x4 : 0000000000000000
> [  565.024096] x3 : 00000000ffffffff x2 : ffff800011841ab8
> [  565.024561] x1 : 7b11701b0ae78800 x0 : 0000000000000000
> [  565.025027] Call trace:
> [  565.025246]  i2c_transfer+0xe4/0xf8
> [  565.025556]  regmap_i2c_read+0x5c/0xa0
> [  565.025886]  _regmap_raw_read+0xcc/0x138
> [  565.026230]  _regmap_bus_read+0x3c/0x70
> [  565.026568]  _regmap_read+0x60/0xe0
> [  565.026875]  _regmap_update_bits+0xc8/0x108
> [  565.027241]  regmap_update_bits_base+0x60/0x90
> [  565.027633]  rk808_device_shutdown+0x6c/0x88
> [  565.028010]  machine_power_off+0x24/0x30
> [  565.028356]  kernel_power_off+0x64/0x70
> [  565.028693]  __do_sys_reboot+0x15c/0x240
> [  565.029038]  __arm64_sys_reboot+0x20/0x28
> [  565.029390]  el0_svc_common.constprop.0+0x68/0x160
> [  565.029811]  el0_svc_handler+0x20/0x80
> [  565.030141]  el0_sync_handler+0x10c/0x180
> [  565.030493]  el0_sync+0x140/0x180
> [  565.030785] ---[ end trace 5167e842ce15f686 ]---
> 
> -Anand
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
