Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB3E1BA76
	for <lists+linux-rockchip@lfdr.de>; Mon, 13 May 2019 17:57:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=efLkNhF4L/5OqJhow5CD3TM6RE89dv++gDa3bSudfCk=; b=f1/fdFV3CPhNCt
	X/HUu133Aqm+gaXyPzrnmCW8TdAYCMPxPO46ZOmELpgo7eGtkLpGw71+K9lf4ZrJAeoO+/zjec02P
	6npc59faWrw5V/xjk2xu9ibHnhGzHprhAmXmjeu4dcUYRCHaYUmdPJ2b+0iSO29ss9UU5dW7VrovW
	2vyXC0wkcBDb0jyhWhFZGYOas36OVczQ+LqOcePB2K3Jeg6C7dmjFKCQ3gZIyN6FRxiNwVGlcMEgc
	hKTjUGQuNNnC1uwpWXBeiI3Ktjmcvgt87d4n5eIxHu5TQDcOobt6EPIKl6EM0/YXsJ6i2nH2R1L0S
	ZlMC8D4vs6VEYGBdBKjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQDKV-00009t-R3; Mon, 13 May 2019 15:57:31 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQDKT-00008q-2t
 for linux-rockchip@lists.infradead.org; Mon, 13 May 2019 15:57:30 +0000
Received: by mail-vs1-xe43.google.com with SMTP id g187so8335231vsc.8
 for <linux-rockchip@lists.infradead.org>; Mon, 13 May 2019 08:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DjnGlq1ohCd0W6xCd80xJkwkNhN63u76f9BdkZ0Jn7A=;
 b=RYLQChAOwvWzDDP10EWoPE2WZgLkeAHe9e5TCyAbKdUVa5X8FOdbfhN5Si7TWPFR66
 Z3yvhWWPUsm1OhvqlkIpHZToYFNzH5sr67anIodWdRUkJ/ACRsswQySRAe83wSRs+lyU
 iG6YOeo8I5sADkmMu4VsSDyWh5/8PbVKiNl0Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DjnGlq1ohCd0W6xCd80xJkwkNhN63u76f9BdkZ0Jn7A=;
 b=KUiVUmg2d6DRqtIUeOA7O4VQLBjmcHU7LiNPXpJhzDNZ+Wd3pxR98E7HX4UTmpnCCs
 39qSveWxjyosRKCkYyHYMYjNw3zsFSvb1Qnm7bkT7TOGnEBxkb13dPh8MxapELNUPBdS
 L3vAUZnPu60tHediUzlp35ERyScNRvw441rLivogHGmvZpdXv+UG2zpCmPxwA8cbLZXc
 Bgq+inddbSh4JMyfdY1r7+ZgC5/MdnVbUGAN14Vr5HRgENHlQsAApB+4SoJpBEo7dBo/
 9iUo+SVDxM02HhjKa7hQI1BFN05k5uWNxTjHfktyAGDqhQs1cAxaBIY/mUkzlBTMNwcp
 O+JQ==
X-Gm-Message-State: APjAAAVk0WFAYr7WqZ7/Oe+Oylz7ShfcEAKpAhpBeqfEg3WwW/1EUQRq
 XWDR8rVCvuGRqgWgAxVstX69VIXAAw8=
X-Google-Smtp-Source: APXvYqy9wbAqUsLnaCLjN66onYccAPvDnRw+fsvmxD0bH9D/FtgLs/Wjh5TYdLM+kmcp65yhgZ+AkQ==
X-Received: by 2002:a67:ec15:: with SMTP id d21mr6074554vso.186.1557763045677; 
 Mon, 13 May 2019 08:57:25 -0700 (PDT)
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com.
 [209.85.221.178])
 by smtp.gmail.com with ESMTPSA id e76sm10107097vke.54.2019.05.13.08.57.24
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 08:57:24 -0700 (PDT)
Received: by mail-vk1-f178.google.com with SMTP id d77so3435351vke.13
 for <linux-rockchip@lists.infradead.org>; Mon, 13 May 2019 08:57:24 -0700 (PDT)
X-Received: by 2002:a1f:d884:: with SMTP id p126mr12860211vkg.70.1557763043730; 
 Mon, 13 May 2019 08:57:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190510223437.84368-1-dianders@chromium.org>
 <20190510223437.84368-5-dianders@chromium.org>
 <20190512074538.GE21483@sirena.org.uk>
In-Reply-To: <20190512074538.GE21483@sirena.org.uk>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 13 May 2019 08:57:12 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xg96SGg-JDjEJRtC6jACcN9Xizcr-zV4rQwXYvuEvmRA@mail.gmail.com>
Message-ID: <CAD=FV=Xg96SGg-JDjEJRtC6jACcN9Xizcr-zV4rQwXYvuEvmRA@mail.gmail.com>
Subject: Re: [PATCH 4/4] Revert "platform/chrome: cros_ec_spi: Transfer
 messages at high priority"
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_085729_299725_D14A4E43 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Brian Norris <briannorris@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Guenter Roeck <groeck@chromium.org>, Benson Leung <bleung@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Sun, May 12, 2019 at 10:05 AM Mark Brown <broonie@kernel.org> wrote:
>
> On Fri, May 10, 2019 at 03:34:37PM -0700, Douglas Anderson wrote:
> > This reverts commit 37a186225a0c020516bafad2727fdcdfc039a1e4.
> >
> > We have a better solution in the patch ("platform/chrome: cros_ec_spi:
> > Set ourselves as timing sensitive").  Let's revert the uglier and less
> > reliable solution.
>
> It isn't clear to me that it's a bad thing to have this even with the
> SPI thread at realime priority.

The code that's there right now isn't enough.  As per the description
in the original patch, it didn't solve all problems but just made
things an order of magnitude better.  So if I don't do this revert I
instead need a patch to bump cros_ec SPI up to realtime to get SPI
transfers _truly_ reliable.  I actually have a patch coded up to do
just that.  ...but then Guenter pointed out that I was effectively
duplicating the work that the SPI framework could already do for me if
I could use the pumping thread at real time priority.

My current plan is parameterize things so that cros_ec_spi can request
a forced transition to the realtime pump thread without breaking
existing users.  I'll code that up this morning and send out a v2 soon
so you can see what you think of it.  :-)

NOTE: I actually tracked down one reason why the high priority thread
wasn't enough and I needed something like real time.  I found that
commit a1b89132dc4f ("dm crypt: use WQ_HIGHPRI for the IO and crypt
workqueues") was making dm-crypt preempt me.  I'll start a separate
discussion about that, but in the end it still seems better to use
something like a real time priority for cros_ec.


-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
