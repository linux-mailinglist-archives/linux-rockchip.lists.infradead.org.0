Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81891155E8A
	for <lists+linux-rockchip@lfdr.de>; Fri,  7 Feb 2020 20:14:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NinpfZxwuOyDwYbtqwSrkTihnoIFjce0g7/BoxgkdXs=; b=rDucUeB0821Iu3
	IWFcNcegKeUqXWke6GBWK1z56MXKvipfV8OheoPrnGIiINYiy8F5TpVTn1i+TeZDvVXGNxsCSGf7x
	wc1zcmtYN6OtBQqkroNV5hG424uqqBfmwJ9NmcA5QWxYf1vDE3XUBeIVh6cEYBkutyZrqn196WA6Q
	NIS0VzUCfdfa5EMslz4LLr799z7BvoaykDQB6ShJ1OCduX244FAPGyQ0Jl4S6YyfWAO4G0sMEUgnp
	fYsYtHSrSDtGZHNJdEh18yzcETe2lffolkF4tD5ndbdhcF4GX17VkMZT09EgU8Qtl6ert197sd4U5
	XFGy2qlNknHLk2gSYqGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0957-0003cy-EY; Fri, 07 Feb 2020 19:14:25 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0954-0003c0-Mx
 for linux-rockchip@lists.infradead.org; Fri, 07 Feb 2020 19:14:24 +0000
Received: by mail-wr1-x443.google.com with SMTP id z9so173813wrs.10
 for <linux-rockchip@lists.infradead.org>; Fri, 07 Feb 2020 11:14:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7vk1aAjw8ZtladZlhG16b83EoOxZYSlkCdQBetmjBWM=;
 b=SThYRxgudG2HjC2XQPPAR7aYj87HC2rcbMw8NyyC39D7pclzWLzkNhmo+kQd0+An1X
 kTkRoMqZRizKNOC9wdnifiQZbEnh2FB0l+vSprHtp2v/Z10BTzhoagrl/8yVmwbIzi5V
 9sk6xwalJKggeMECSV1i+1vRKCUjhf7YnVMIY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7vk1aAjw8ZtladZlhG16b83EoOxZYSlkCdQBetmjBWM=;
 b=fbpEp0PpwoNdehoV0UIs/slu+aXJAnxXME/cyQmgQkUOlUMkrp0iqBr5MEjpVm/2Nc
 90aGu2WkyVXbT09ox34KkCAGWJWtrxVaSXJxDaQavYL0O/5VifkmjKYgzT0BkSSfXe4J
 WmiE2Zd6/tSh9b0hD4zUHn/b8M4jJW1nOQnF7UZw8ylt0WGe+OAh5uXFoLEnR6gjRZWM
 edObnVROZYxGaLEhRGWkMqgtHHckKNxV8b485p7R4HMOWg+tqPddurxg6Jd6PgwIySeq
 dF9Cm/hmAVjc5a/FdwQs0FGUhj4y3WFXDZQxSUeneSPMSqdTmUycRkWeMN8cXF0E6252
 n73Q==
X-Gm-Message-State: APjAAAXEaMJK1J3vSKwt9Z7hMQkzlS5uXH6QPUe1sILIUOCVJki30QYF
 rNcGbMayr8LD9x4eWIbY3IjruiajCy9A3lcUxKq7RA==
X-Google-Smtp-Source: APXvYqyZkIAZ4BXvFcG5Oq2N9Gzy4VxNWIabeIvUv/ObWa0bGX94f4+F/ifSy3djcWk9SISgHxgds+kWx+674IGfnzM=
X-Received: by 2002:adf:f586:: with SMTP id f6mr497161wro.46.1581102856853;
 Fri, 07 Feb 2020 11:14:16 -0800 (PST)
MIME-Version: 1.0
References: <CAOf5uwmPMRq4v9=5-Z=XLH7hATC-AhXQWthfy_uvYTXSo6V+CA@mail.gmail.com>
In-Reply-To: <CAOf5uwmPMRq4v9=5-Z=XLH7hATC-AhXQWthfy_uvYTXSo6V+CA@mail.gmail.com>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Fri, 7 Feb 2020 20:14:04 +0100
Message-ID: <CAOf5uwnRLn7tXFRxjPGASuCnmOwooA4Ytk28Zc+A0kp=UZDQWw@mail.gmail.com>
Subject: Re: siimple-framebuffer rockchip persistent logo
To: Kever Yang <kever.yang@rock-chips.com>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_111423_176654_5523C986 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 LKML <linux-kernel@vger.kernel.org>, Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi all

I move a bit on this

On Sun, Jan 12, 2020 at 6:16 PM Michael Nazzareno Trimarchi
<michael@amarulasolutions.com> wrote:
>
> Hi Kever
>
> Trying to have a persistent banner from uboot to linux-kernel. I'm
> right now working on linux-rockchip kernel but I think that the
> problem is even on mainline
>
> +               framebuffer: framebuffer@7f800000 {
> +                       compatible = "rockchip,simple-framebuffer",
> +                                    "simple-framebuffer";
> +                       reg = <0x7f800000 (1920 * 1080 * 4)>;
> +                       width = <1920>;
> +                       height = <1080>;
> +                       stride = <(1920 * 4)>;
> +                       format = "a8b8g8r8";
> +                       clocks = <&cru  PCLK_HDMI_CTRL>, <&cru SCLK_HDMI_HDCP>,
> +                                <&cru SRST_LCDC0_AXI>, <&cru
> SRST_LCDC0_AHB>, <&cru SRST_LCDC0_DCLK>,
> +                                <&cru ACLK_VOP0>, <&cru HCLK_VOP0>;
> +                       status = "okay";
> +               };
>

Now I can allocate the parameter using the bootloader and create the
right mapping for the simple framebuffer. I don't even understand
how sunxi and meson can work if they don't create a reserved memory
using no-map. This is fixed on my side so the log is totally clean.
I have added the deregister of simple fb and handover to the drm

Now my boot parameters are:
Kernel command line: console=ttyS2,115200n8 root=/dev/mmcblk0p1
rootwait pd_ignore_unused clk_ignore_unused

Still I have display go off on tinker during boot. Any suggestion?

Michael


> Seems that it get off before I reach the drm registration
>
> [    2.077495] simple-framebuffer 7f800000.framebuffer: framebuffer at
> 0x7f800000, 0x7e9000 bytes, mapped to 0xf0900000
> [    2.077519] simple-framebuffer 7f800000.framebuffer:
> format=a8b8g8r8, mode=1920x1080x32, linelength=7680
> [    2.161225] simple-framebuffer 7f800000.framebuffer: fb0: simplefb
> registered!
> [    3.433847] fb: switching to rockchip-drm-fb from simple
>
> I don't find all the clocks and if those are the only think that I
> need to stay on. Any suggestion?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
