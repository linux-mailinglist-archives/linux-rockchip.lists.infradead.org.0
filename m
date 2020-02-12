Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B7915A83D
	for <lists+linux-rockchip@lfdr.de>; Wed, 12 Feb 2020 12:49:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hrdJ1h83+m0os4KysG6jy9u3S4xydc0FZwoxjIhEGUM=; b=l+H9EFKCXlxUsP
	vcMCd/Uv/JwWOh1N7KuxZIHNLmZD1Mw/tVPChbji3iaeNRv4rxfuQH04rRIJ06kbvVkngzwyzy559
	FmZoudu4iEirDUp74NH+AYUNXnnk1hGKQgKpBh+bp6uX6UHVxDTJtyVA1Fu0tKTg0zYlDlqIuUphd
	fVv3+PArAXG/OW9QIPZfCI+N2A6Q8U88PlMVfQLdb+zS2Kk7rlgBWNc7sHFiE3pG4n1R41PfCr3ni
	pjReAt8whBFnOaz2brTmRq4970dRvuho5twpbKlWD85NYAg52uAIhhika3OFLtLEfmvJBi4jwlVJa
	NFqTPkzXuVRodVeGOa2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1qWH-0002dy-93; Wed, 12 Feb 2020 11:49:29 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1qWD-0002d4-18
 for linux-rockchip@lists.infradead.org; Wed, 12 Feb 2020 11:49:26 +0000
Received: by mail-wr1-x443.google.com with SMTP id w12so1932233wrt.2
 for <linux-rockchip@lists.infradead.org>; Wed, 12 Feb 2020 03:49:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cmD9dIl/Cn0kv69K4stIs4I7W2zBHHJK55pAH/ZJ47c=;
 b=acclcE/sRMCwwwI3qfIXMIEYfQhDwFgFCHLPzR9bw0qstSofqRV0pf3FNFUCUOnvEw
 Fo4TIP/N8RDU/JMVYtDIo8IGMkICBw0+nH6cYwRz/WHCO7y85ywaYM5vPeCXUR2tdRmw
 Wb6XW1Sy4xkzhT7ij0woVvGwwK+tYs1yf6HRs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cmD9dIl/Cn0kv69K4stIs4I7W2zBHHJK55pAH/ZJ47c=;
 b=nNYb9mgARgYsAQv1AxX5lY0aShIT6rwYT+QI0oMwZfwI0DDi7tYRZvl9ThgIqVcUp3
 F9gZFrI6WsSVgB8luHoz5IPT6hb8gK9BvjsdOPN/is1pKpLjDuKoLbqsSDkH/v23P1BH
 LDxAYGUX85NO2PQ5NrLV63kJVJYfy7v5dq0GutPnXX/K1uiWYJB0pwYDPiWBeGVcgeHV
 qBzznl9OCKt4vY2Ja7ENlGQGRUybDH/n8hD9128qz5WBrxYJdUWSOD5nr3JBOetmWMzn
 4ODoG6r1cY2UMoSrKQxuySI5YIe6qxuE40ybtfJ0D6aHPhNwYzFJEJ0eHf85/8RUlNnF
 rirw==
X-Gm-Message-State: APjAAAU8iEdI9w4B4hpBs5TUYrZCjtOoFGB0BEGOFcsCGa0TUv8fD0mI
 tBqpWHALm4W4No8haccihfn+1FAnB1oS6oBsrgwqdMyuyZI=
X-Google-Smtp-Source: APXvYqzGbvkQN17/r8TFahQCuSW2Wlj9TKHmg3ifCvXdV/S5m70bJj2Ia346lmfK3hzvmpBnTFIOfgZmbL4XNZ8LvQU=
X-Received: by 2002:adf:b605:: with SMTP id f5mr14199856wre.383.1581508162663; 
 Wed, 12 Feb 2020 03:49:22 -0800 (PST)
MIME-Version: 1.0
References: <CAOf5uwmPMRq4v9=5-Z=XLH7hATC-AhXQWthfy_uvYTXSo6V+CA@mail.gmail.com>
 <CAOf5uwnRLn7tXFRxjPGASuCnmOwooA4Ytk28Zc+A0kp=UZDQWw@mail.gmail.com>
In-Reply-To: <CAOf5uwnRLn7tXFRxjPGASuCnmOwooA4Ytk28Zc+A0kp=UZDQWw@mail.gmail.com>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Wed, 12 Feb 2020 12:49:11 +0100
Message-ID: <CAOf5uwnf6yF0sksjVRRzxLCD8xaMGhUhkOQ8CjwhYy85zcArLw@mail.gmail.com>
Subject: Re: siimple-framebuffer rockchip persistent logo
To: Kever Yang <kever.yang@rock-chips.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_034925_091436_969A71BA 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Hans de Goede <hdegoede@redhat.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 LKML <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Heiko and Hans

I manage to have the persistent framebuffer but complete working video subsystem

THe problem is the follow

[    0.116514] rk_iommu ff930300.iommu: attaching to power domain 'pd_vio'
[    0.116539] rk_iommu ff930300.iommu: adding clock 'aclk_vop0' to
list of PM clocks
[    0.116561] rk_iommu ff930300.iommu: adding clock 'hclk_vop0' to
list of PM clocks
[    0.116989] rk_iommu ff940300.iommu: attaching to power domain 'pd_vio'
[    0.117013] rk_iommu ff940300.iommu: adding clock 'aclk_vop1' to
list of PM clocks
[    0.117032] rk_iommu ff940300.iommu: adding clock 'hclk_vop1' to
list of PM clocks
[    0.117335] rk_iommu ff9a0800.iommu: attaching to power domain 'pd_video'
[    0.117359] rk_iommu ff9a0800.iommu: adding clock 'aclk_vcodec' to
list of PM clocks
[    0.117377] rk_iommu ff9a0800.iommu: adding clock 'hclk_vcodec' to
list of PM clocks
[    0.117773] rockchip-pm-domain
ff730000.power-management:power-controller: Calling pd power off
[    0.117926] rockchip-pm-domain
ff730000.power-management:power-controller: Calling power domain off
[    0.117984] rockchip-pm-domain
ff730000.power-management:power-controller: Calling pd power off
[    0.118016] rockchip-pm-domain
ff730000.power-management:power-controller: Calling power domain off

As you can see the pd_vio domain are off even if simpleframe buffer
own them. The problem is that the
rk_iommu is registered before the simple framebuffer. When pd_io
domain is off everything is done on
hdmi side

+       chosen {
+               #address-cells = <2>;
+               #size-cells = <2>;
+               ranges;
+
+               simplefb_hdmi: framebuffer-lcd0-hdmi {
+                       compatible = "rockchip,simple-framebuffer",
+                                    "simple-framebuffer";
+                       rockchip,pipeline = "rockchip,dw_hdmi";
+                       clocks = <&cru PCLK_HDMI_CTRL>, <&cru
SCLK_HDMI_HDCP>, <&cru SCLK_HDMI_CEC>,
+                                <&cru ACLK_VOP0>, <&cru DCLK_VOP0>,
<&cru HCLK_VOP0>;
+                       power-domains = <&power RK3288_PD_VIO>;
+                       status = "disabled";
+               };
+       };

Memory area is automatic injected by the bootloader. Now rk iommu is
with runtime enable so basically if I understand
the >sync call will schedule a power off domain if they are not in use.

[    0.118064] vgaarb: loaded
[    0.118997] SCSI subsystem initialized
[    0.119213] libata version 3.00 loaded.
[    0.119499] usbcore: registered new interface driver usbfs
[    0.119552] usbcore: registered new interface driver hub
[    0.119617] usbcore: registered new device driver usb
[    0.121505] pps_core: LinuxPPS API ver. 1 registered
[    0.121515] pps_core: Software ver. 5.3.6 - Copyright 2005-2007
Rodolfo Giometti <giometti@linux.it>
[    0.121539] PTP clock support registered
[    0.121777] EDAC MC: Ver: 3.0.0
[    0.125046] clocksource: Switched to clocksource arch_sys_counter
[    0.930470] simple-framebuffer 7f800000.framebuffer: attaching to
power domain 'pd_vio'
[    0.930501] simple-framebuffer 7f800000.framebuffer: adding clock
'pclk_hdmi_ctrl' to list of PM clocks
[    0.930523] simple-framebuffer 7f800000.framebuffer: adding clock
'sclk_hdmi_hdcp' to list of PM clocks
[    0.930544] simple-framebuffer 7f800000.framebuffer: adding clock
'sclk_hdmi_cec' to list of PM clocks
[    0.930564] simple-framebuffer 7f800000.framebuffer: adding clock
'aclk_vop0' to list of PM clocks
[    0.930585] simple-framebuffer 7f800000.framebuffer: adding clock
'dclk_vop0' to list of PM clocks
[    0.930606] simple-framebuffer 7f800000.framebuffer: adding clock
'hclk_vop0' to list of PM clocks
[    0.930642] rockchip-pm-domain
ff730000.power-management:power-controller: Calling pd power on
[    0.930746] rockchip-pm-domain
ff730000.power-management:power-controller: Calling power domain on
[    0.931083] simple-framebuffer 7f800000.framebuffer: framebuffer at
0x7f800000, 0x7e9000 bytes, mapped to 0x(ptrval)
[    0.931101] simple-framebuffer 7f800000.framebuffer:
format=x8r8g8b8, mode=1920x1080x32, linelength=7680
[    0.931415] simple-framebuffer 7f800000.framebuffer: fb0: simplefb
registered!

Here when everything get registered by offcouse the screen went black already

Michael

On Fri, Feb 7, 2020 at 8:14 PM Michael Nazzareno Trimarchi
<michael@amarulasolutions.com> wrote:
>
> Hi all
>
> I move a bit on this
>
> On Sun, Jan 12, 2020 at 6:16 PM Michael Nazzareno Trimarchi
> <michael@amarulasolutions.com> wrote:
> >
> > Hi Kever
> >
> > Trying to have a persistent banner from uboot to linux-kernel. I'm
> > right now working on linux-rockchip kernel but I think that the
> > problem is even on mainline
> >
> > +               framebuffer: framebuffer@7f800000 {
> > +                       compatible = "rockchip,simple-framebuffer",
> > +                                    "simple-framebuffer";
> > +                       reg = <0x7f800000 (1920 * 1080 * 4)>;
> > +                       width = <1920>;
> > +                       height = <1080>;
> > +                       stride = <(1920 * 4)>;
> > +                       format = "a8b8g8r8";
> > +                       clocks = <&cru  PCLK_HDMI_CTRL>, <&cru SCLK_HDMI_HDCP>,
> > +                                <&cru SRST_LCDC0_AXI>, <&cru
> > SRST_LCDC0_AHB>, <&cru SRST_LCDC0_DCLK>,
> > +                                <&cru ACLK_VOP0>, <&cru HCLK_VOP0>;
> > +                       status = "okay";
> > +               };
> >
>
> Now I can allocate the parameter using the bootloader and create the
> right mapping for the simple framebuffer. I don't even understand
> how sunxi and meson can work if they don't create a reserved memory
> using no-map. This is fixed on my side so the log is totally clean.
> I have added the deregister of simple fb and handover to the drm
>
> Now my boot parameters are:
> Kernel command line: console=ttyS2,115200n8 root=/dev/mmcblk0p1
> rootwait pd_ignore_unused clk_ignore_unused
>
> Still I have display go off on tinker during boot. Any suggestion?
>
> Michael
>
>
> > Seems that it get off before I reach the drm registration
> >
> > [    2.077495] simple-framebuffer 7f800000.framebuffer: framebuffer at
> > 0x7f800000, 0x7e9000 bytes, mapped to 0xf0900000
> > [    2.077519] simple-framebuffer 7f800000.framebuffer:
> > format=a8b8g8r8, mode=1920x1080x32, linelength=7680
> > [    2.161225] simple-framebuffer 7f800000.framebuffer: fb0: simplefb
> > registered!
> > [    3.433847] fb: switching to rockchip-drm-fb from simple
> >
> > I don't find all the clocks and if those are the only think that I
> > need to stay on. Any suggestion?



-- 
| Michael Nazzareno Trimarchi                     Amarula Solutions BV |
| COO  -  Founder                                      Cruquiuskade 47 |
| +31(0)851119172                                 Amsterdam 1018 AM NL |
|                  [`as] http://www.amarulasolutions.com               |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
