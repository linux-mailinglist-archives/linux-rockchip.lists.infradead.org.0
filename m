Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C73E4C4F8
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Jun 2019 03:28:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SpSIR30LOBa3eCqPYtGjWOXL7M37u8s91IEhWLfwv5E=; b=sI4HeMF4tAZBDJ
	JmF0Q/K+OyQY3GSilRqGIeAFtRMK/D4U/cR5vWPQbTcJ1leV3tAonX77XiSsrwNVROphv1cE5u+9C
	B0uPojVN85+6BfSKJ9kWTiWULVqQ9MNwhr+V+ljL18rX74NPgYMVMrTMylH3z+wspG790B/nmpWq1
	uekjwJqDQ0UKs9yomH5Mrrxpfx66eDKD74WlzVFVOwMIg4KqK9TLacSY7kSAPVfVxk7Kb8HocDOY4
	STTfZBZqqlkOtNSCYjMiUAlz1dS7HHb10dGRibXl+8UY8aBokK37a2U0CY3DtouSUlx7B/0Q8EeU5
	JgmiqZAHzaI/2zd59tkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdlsJ-0001Au-Tg; Thu, 20 Jun 2019 01:28:28 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdls4-0000zp-MH
 for linux-rockchip@lists.infradead.org; Thu, 20 Jun 2019 01:28:13 +0000
Received: by mail-io1-xd42.google.com with SMTP id e3so2018872ioc.12
 for <linux-rockchip@lists.infradead.org>; Wed, 19 Jun 2019 18:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K+lJ3CLPTlV9tpNBKFgd0Xmeaz/SJ4QdPFY55va1FCk=;
 b=T9qVefZXg/l4TY1fZ5t4+FBcV8bawtYd7X1iwe2XqARuiVY+xJvg4NGnhUnJ/dR/K1
 Y9cB1lnaFpB2sOYEZkpB8u1dWTE9wM6t07kCXXzXW3SqvSe6lqHfvnhmN3QyN0W4IRi9
 CTTi0MmuSSPbmAZXhKPRSNz3zuDNzA0674j2o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K+lJ3CLPTlV9tpNBKFgd0Xmeaz/SJ4QdPFY55va1FCk=;
 b=uGTDfhgCArEaauu0I/hY89xG8TUKl+N+VFXeLYIh10Ij12llvzagiZDJtkVuVMwpCn
 Tc8Vt03w/BJ1d5vIm+qcPwDrTADPl0+WRNxbgoZ6UWtMI2sYesUF+2Ky2IOKIMZXabqA
 iMSL/w8nYbKHrHHxENgWDZUfpdut5FbeZ6IgYcNiRPA2ypupAV8TIke/NxnnYfRCxXKN
 uRhdKy8ihodVJzrnac02vkE5ugmPmLclKBtKANU7Nzasd2ImZr0FypN/FzFUlDlPEgLM
 OUiTUte45t+vV2tRDdfowBBLG0WY0Fbtdb4h90szvzOo/UHiOkHxz8xBWMv+GEhITgbC
 OBOw==
X-Gm-Message-State: APjAAAWEkM5PLxMAZhupLfQwZij6/fFhpvuljsDhNVAOnDJqMPvCOplO
 f3yalBYAVIOGpYLC4dGMDSbYPz4gkVA=
X-Google-Smtp-Source: APXvYqwoR9xatfhYeFPETemiIe8Zf3GxGNt6cHfcyOZi7Z6UM8gZEZfeIp72QKfh7iGStlGDXcQjXA==
X-Received: by 2002:a05:6602:220d:: with SMTP id
 n13mr7369256ion.104.1560994091368; 
 Wed, 19 Jun 2019 18:28:11 -0700 (PDT)
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com.
 [209.85.166.54])
 by smtp.gmail.com with ESMTPSA id j23sm18816932ioo.6.2019.06.19.18.28.10
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 18:28:10 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id e3so2018751ioc.12
 for <linux-rockchip@lists.infradead.org>; Wed, 19 Jun 2019 18:28:10 -0700 (PDT)
X-Received: by 2002:a5e:d615:: with SMTP id w21mr12594037iom.0.1560994089873; 
 Wed, 19 Jun 2019 18:28:09 -0700 (PDT)
MIME-Version: 1.0
References: <1458265206-15733-1-git-send-email-heiko@sntech.de>
 <1458265206-15733-5-git-send-email-heiko@sntech.de>
In-Reply-To: <1458265206-15733-5-git-send-email-heiko@sntech.de>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 19 Jun 2019 18:27:55 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U23+5pcze=6zDTx0dAYF8HTmbR8s8zem93VhgYgaZeGQ@mail.gmail.com>
Message-ID: <CAD=FV=U23+5pcze=6zDTx0dAYF8HTmbR8s8zem93VhgYgaZeGQ@mail.gmail.com>
Subject: Re: [PATCH 04/10] ARM: dts: rockchip: add startup delay to
 rk3288-veyron panel-regulators
To: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_182812_756897_EF450C33 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Heiko Stuebner <heiko@sntech.de>, LKML <linux-kernel@vger.kernel.org>,
 Matthias Kaehlcke <mka@chromium.org>, Yakir Yang <ykk@rock-chips.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Wed, Fri, 18 Mar 2016 Heiko Stuebner <heiko@sntech.de> wrote:
>
> The panels need a bit of time to actually turn on. If this isn't
> observed, this results in problems when trying talk to the panels
> and thus produces detection errors. 100ms seem to be a safe value
> for the time being.
>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 1 +
>  arch/arm/boot/dts/rk3288-veyron-jerry.dts  | 1 +
>  arch/arm/boot/dts/rk3288-veyron-minnie.dts | 1 +
>  arch/arm/boot/dts/rk3288-veyron-speedy.dts | 1 +
>  4 files changed, 4 insertions(+)

I know it was 3 years ago, but any idea how to reproduce the problems
you were seeing without this patch?  I believe the downstream kernel
never had any delay like this and I'm not aware of any issues.

I wonder if the need for this extra 100 ms delay is no longer there
now that we have:

3157694d8c7f pwm-backlight: Add support for PWM delays proprieties.
5fb5caee92ba pwm-backlight: Enable/disable the PWM before/after LCD
enable toggle.
6d5922dd0d60 ARM: dts: rockchip: set PWM delay backlight settings for Veyron

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
