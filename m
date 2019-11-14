Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC30FFCBA7
	for <lists+linux-rockchip@lfdr.de>; Thu, 14 Nov 2019 18:18:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dEg5WZOoDFhGnmg74ux1dEDp+0T57n71ORWGzF/kQfA=; b=cxL1FCBjW0RQqu
	LWuyjp8Y02h8Ng4wIlXpa1Zcq4sJc6Bw03/QzuMF4bH9uiDHc6Q1MWyqw7Vw9SMLYz1uaC0xEKLGS
	bIqoUYwtC/rvQnpn6KSVdrUxZDf/d+MkicsyAf34zTUva/fq1qDyn1xFEWIqvIkoZAD8Gm/Z/EIHT
	D8MCAhC12exXrlhPFfNeIia7MLrElQADUnHZ/taTnNQRcxrrHmlKCxriTthDW18zqsYIIFnFZCY8R
	SNoxO1CScFlnOTnFfwOdhvIpJR4XfsqfxgBDrNT+F1z+3pFek9313XDkmnutmJZkPer9DcfQzDzga
	TzFI27BwiTESorZziXiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVIlU-0001AA-HZ; Thu, 14 Nov 2019 17:18:40 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVIlS-000195-7W
 for linux-rockchip@lists.infradead.org; Thu, 14 Nov 2019 17:18:39 +0000
Received: by mail-io1-xd41.google.com with SMTP id r2so2521315iot.10
 for <linux-rockchip@lists.infradead.org>; Thu, 14 Nov 2019 09:18:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=f7reOlZqp6iwOkryxtYw5chswKvS9lLb7R9DbAzTcdk=;
 b=eBH4zUytcqB2NJQGehzzUs2Rd8EkW1/vxYlqC2L1UhI9UXREEztWk4LW3tOac5cCul
 VkgqPmE8y3rgdKmYdRu2B+ZExAu1qQI0a7dfWcrG3T6FDR2B1jWFizO5cJKEGw6SwRCF
 8gbh/Iapie7nE1gbggHz9xRcC1TibRz8Bkyb8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f7reOlZqp6iwOkryxtYw5chswKvS9lLb7R9DbAzTcdk=;
 b=h4MVU7MSoXsOqWcIJTyjtyfrs6CqTCSI/oz26re+c3fBBVb2OGkUkPa9Mk7ggNMCZ8
 CadC4HZb5xRLvFCtBqB5Oh7zW2zxfaDjRt08GW/H1lM1dD3U62zTjLewrbMnw7Te+m/6
 CCEazbV9yUFhVVZnngRUv5pdHPh71FPntTIUCguGftL/6wTLq9hUnWjWKjSLH+Q4911k
 8+pViDIr4ZJxHv8dxZLMf7jzZBsp4GpZ7WQS5yXHjJLYDohzadAXaVR0cAKbtvlWwMaT
 s/WfjKW8XWhmFG9sWkl72LIa+d96DOnIq4shvvN3D+GbETNajQ5oX7JhzdCCUJSCxfpr
 qKHQ==
X-Gm-Message-State: APjAAAXJEBjlBEkx50zQOIko9VW044fXZaTmuG0vjcs/u7k4k1OolJbf
 YY7LRwOQUDYZTYYrlc4jP19lrr3sgJE=
X-Google-Smtp-Source: APXvYqypOqNai8wNNLpZ7z1VnN3zEYvnv6GURmJiR82ANnNhHj79MI1nlRihaw9SJLhXaGu8NPQR9A==
X-Received: by 2002:a6b:b581:: with SMTP id e123mr632759iof.67.1573751915561; 
 Thu, 14 Nov 2019 09:18:35 -0800 (PST)
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com.
 [209.85.166.52])
 by smtp.gmail.com with ESMTPSA id e67sm831385ill.42.2019.11.14.09.18.33
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 Nov 2019 09:18:33 -0800 (PST)
Received: by mail-io1-f52.google.com with SMTP id v17so7631347iol.12
 for <linux-rockchip@lists.infradead.org>; Thu, 14 Nov 2019 09:18:33 -0800 (PST)
X-Received: by 2002:a6b:a0c:: with SMTP id z12mr124697ioi.142.1573751912819;
 Thu, 14 Nov 2019 09:18:32 -0800 (PST)
MIME-Version: 1.0
References: <20191112004700.185304-1-abhishekpandit@chromium.org>
 <3639233.d3cbfcQTlM@phil>
In-Reply-To: <3639233.d3cbfcQTlM@phil>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 14 Nov 2019 09:18:19 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Vkto_n2sBSJSvDhoA3scdeW+OROP4geyUrhjnvn6meMQ@mail.gmail.com>
Message-ID: <CAD=FV=Vkto_n2sBSJSvDhoA3scdeW+OROP4geyUrhjnvn6meMQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Add brcm bluetooth for rk3288-veyron
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_091838_265202_871273E3 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-bluetooth@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Thu, Nov 14, 2019 at 5:45 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Hi,
>
> Am Dienstag, 12. November 2019, 01:47:00 CET schrieb Abhishek Pandit-Subedi:
> > This enables the Broadcom uart bluetooth driver on uart0 and gives it
> > ownership of its gpios. In order to use this, you must enable the
> > following kconfig options:
> > - CONFIG_BT_HCIUART_BCM
> > - CONFIG_SERIAL_DEV
> >
> > This is applicable to rk3288-veyron series boards that use the bcm43540
> > wifi+bt chips.
> >
> > As part of this change, also refactor the pinctrl across the various
> > boards. All the boards using broadcom bluetooth shouldn't touch the
> > bt_dev_wake pin.
> >
> > Signed-off-by: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
>
> looks good to me
> @dianders: does this look ok to you too?

Yes, but it's not ready to land yet.  Specifically the bindings are
still being discussed [1].  Abhishek: you should probably add
information about the fact that the bindings need to land first to
your Commit-notes.  When the bindings land I'm happy to add my
Reviewed-by.

For history, +Matthias and I both did an early review of this [2].
Compared to that version the only diffs here (other than merge
conflicts) are:

-               pcm-parameters          = [01 02 00 01 01 00 00 00 00 00];

+
+               brcm,bt-sco-routing     = [01];
+               brcm,pcm-interface-rate = [02];
+               brcm,pcm-sync-mode      = [01];
+               brcm,pcm-clock-mode     = [01];


> Just to confirm, I guess mickey and brain do not have the suspend_l pin
> settings? [They only seem to get the default pinctrl state but not the
> sleep state in @pinctrl]

The suspend_l pin just goes to the EC and lets the EC know that we're
in suspend.  I know for sure mickey has no EC.  I'd believe the same
to be true of brain, though perhaps you and +Alexandru are the only
two people with working brains?  I know I don't have one, as can be
evidenced by some of the stupid things I do.  :-P  I would also note
that this CL doesn't change whether or not mickey/brain control
suspend_l.  They used to inherit from 'rk3288-veyron.dtsi' which
didn't define it.

[1] https://lore.kernel.org/r/20191112230944.48716-5-abhishekpandit@chromium.org
[2] https://crrev.com/c/1772261

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
