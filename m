Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D65B1768
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Sep 2019 05:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VK/lMXYxfnQ7GEA18S5WMVk4ipaktaiYJycqXKuSm0M=; b=Y5jLjHDgG8MAK0
	pS5cKxfcvAZv0KihVqg4/7/xltrNGhulZtXZbkP/bf7yXEcoLEDsEu50IBbFVwJsjCNbcuxz0ANim
	CzMGPDpsE+x8zgCD4+QlU7qo6ytkNicJOhK3BiGtrgJZiJBIqR2sbvRNG4LN4PGc8FHOZ/ASkfcfI
	YSrHftrklDVvU4gptVS+Usc/SXxtR8+NH48wXeSyGWVZwbeoO1neDZvh7ulzWRgc5Wl+Gk8aUaJzx
	Lb1iPYsuA1PSgfxqLLyMb4ktVz5HnSOffJqIL0UzMr0qxdlB6HS7iLX1oBpXVhlzjDgBt5MIPhsSM
	gQGYlVx5KFjrXTQ+zCfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8c9W-0005PY-6T; Fri, 13 Sep 2019 03:21:42 +0000
Received: from mail-ua1-x933.google.com ([2607:f8b0:4864:20::933])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8c9R-0005P7-59
 for linux-rockchip@lists.infradead.org; Fri, 13 Sep 2019 03:21:39 +0000
Received: by mail-ua1-x933.google.com with SMTP id f9so8738812uaj.4
 for <linux-rockchip@lists.infradead.org>; Thu, 12 Sep 2019 20:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ggmTaVtEg0sRqtO4HTrELrnlemN7OrrMmpQZmh+qbLU=;
 b=omn58x+J+cRkZD13vwsEAI54CSKidn6VoNX5HHeJve/6nobjfCEqbnBTOrBjzXHwMq
 a1BXTctgObbc7Wqpb80viDx31EH8NC1/A6TymI63/+GUAtcE4Oxugitrvut3bTa0xIPy
 TiPq5a5tm2y7rb9YF2EjQj34rKXzqEnXTEQot0/IX7s7LAznmlGDUPHW1ZJjKs6KVnvr
 f0s9g+CftPyqmyvBHVfYRcjwZa37vl6KT0DtlekZq6W/yrcN0VzcZOgmdwihZ4ifKL4b
 iD9V864UEg6xUmxe5IWb/9BsVrNM76PcfL94q0fuYD+5gRp4xFtdo9cZx3ZLv+MIQsj+
 QvMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ggmTaVtEg0sRqtO4HTrELrnlemN7OrrMmpQZmh+qbLU=;
 b=nisf99SCVQJ/vJEW2LcmQfjo4h/z5l4dyUqAQjrTIUcSZxes5Q2H6enB5DKOm7FMyW
 QjYTYAZUstHMSNvmvMmEKhHqdo83K7a6v/pWNoxWwzSVKs9KvGR38133qfOJ2tI3eOnu
 86sbACfucG3OswRqFZXXsBuzAoLlR1nsc2dI9AGzrAqkG8VB1r7psDewRj+QPdvxd6qw
 OPlQ6biecgspHruMNmSKpIl3Oww1xFiB3fAV46RSXkvPzcp9zwvVNRKfHqRRjBqLcuFq
 EjyziDWARUNBKpplnHil8e53QGzTCB5p9TyjL/ScHEIV8w39vw9rCHNM7zQCfC9Mn1Wm
 pNeQ==
X-Gm-Message-State: APjAAAWeo1zmwNDYkJ4bn2S8CJIqA078jjY5DB8YrSk+619brIc8gCSy
 s+GMILOli1DGmlhPnST3bIW/66NOffVrJAtUSyQ=
X-Google-Smtp-Source: APXvYqwGtvXQDa0eWjNqJ6XNV6oCXbbnxeiFhb27CxKq+86ayLdTTIHEUuI5lyIirZsN/4k2IBzXYS7iviyvkx0w04E=
X-Received: by 2002:a9f:3f8a:: with SMTP id k10mr2021668uaj.121.1568344893973; 
 Thu, 12 Sep 2019 20:21:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAMty3ZDo6Hk9swGcaZ0RNC-4KeQ=EJS9gu_-+ewmM618GHhO+w@mail.gmail.com>
In-Reply-To: <CAMty3ZDo6Hk9swGcaZ0RNC-4KeQ=EJS9gu_-+ewmM618GHhO+w@mail.gmail.com>
From: Tony McKahan <tonymckahan@gmail.com>
Date: Thu, 12 Sep 2019 23:21:22 -0400
Message-ID: <CAERgokkJiuGZ2aoWthA+eFQ5r_Vsv2mp1FGdEghGsu2MaC1Nvg@mail.gmail.com>
Subject: Re: [U-Boot] rk3288: HDMI out causing boot hang
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_202137_223899_C4B3C5BF 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:933 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tonymckahan[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 U-Boot-Denx <u-boot@lists.denx.de>, Anatolij Gustschin <agust@denx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello Jagan,

On Thu, Sep 12, 2019 at 10:50 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> Hi All,
>
> Did anyone tried HDMI out on rk3288? Enabling HDMI out causing boot
> hang, during stdout initialization from console.c
>
> Enabled below configs and stdin/out/err environment to probe the
> DM_VIDEO, seems like the console initialization hangs during stdout
> initialization.
>
> Log:
> Model: Tinker-RK3288
> DRAM:  2 GiB
> MMC:   dwmmc@ff0c0000: 1
> Loading Environment from MMC... OK
> 1. console_init_r
> 2. console_init_r
> 2.1 console_init_r
> rk3288_vop_probe
> vop@ff930000: probing regulator 'vcc18_lcd'
> vop@ff930000: probing regulator 'VCC18_LCD'
> vop@ff930000: probing regulator 'vdd10_lcd_pwren_h'
> vop@ff930000: probing regulator 'vdd10_lcd'
> vop@ff930000: probing regulator 'VDD10_LCD'
> vop@ff930000: probing regulator 'vcc33_lcd'
> rk_display_init(vop@ff930000, 2139095040, endpoint@0)
> vop_id=0
> remote vop_id=0
> rk_display_init(vop@ff930000): no UCLASS_DISPLAY for remote-endpoint
> Device failed: ret=-22
> rk_display_init(vop@ff930000, 2139095040, endpoint@1)
> vop_id=1
> remote vop_id=0
> Found device 'hdmi@ff980000', disp_uc_priv=7cf71710
> rk3288_hdmi_probe
> hdmi@ff980000: probing regulator 'vcc50_hdmi'
> rk_hdmi_probe: 1
> rk_hdmi_probe: 2
> rk_hdmi_probe: done!
> fb=7f800000, size=2560 1440
> rk3288_vop_probe done!
>
> Changes:
> +CONFIG_DM_VIDEO=y
> +CONFIG_DISPLAY=y
> +CONFIG_VIDEO_ROCKCHIP=y
> +CONFIG_DISPLAY_ROCKCHIP_HDMI=y
> +CONFIG_CONSOLE_SCROLL_LINES=10
>
> +#define ROCKCHIP_DEVICE_SETTINGS \
> +               "stdout=serial,vidconsole\0" \
> +               "stderr=serial,vidconsole\0"
>
> Any inputs?

I saw this some time ago with Armbian with ASUS Tinker Board, but
thought I had somehow misconfigured it, and simply disabled it.  I can
confirm it hangs for me though.

>
> Jagan.
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
