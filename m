Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B2167C61
	for <lists+linux-rockchip@lfdr.de>; Sun, 14 Jul 2019 00:59:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lKfYBQppol8+6pq2za45OpeDnAg98rquMg7eY0h28FQ=; b=GMzK3XYmvdqA0r
	Xr2MD6O8LDIs6ZtWTs1OSaBgM9zyc5ToIBXYJPA8ylcxu6TwblbHgUZdkBY08f3r9SbEyh4Uh/CCD
	QOiXl7NZcUuuDL1YIV3xUSGsW2MIWzkDkKE/jCD4uPQfwMsu03RICGuVv3B6N3tT9HKu3O6tYBxbq
	WVmBaFNDIsCkpMpDtOvHW79Mg7cIcv2MG9BJ9XxpdP6ePAITBkrsvD9yZUzwuu5nfKi0GfSXUxcel
	KRXSTvO+BnBsIJHdgp0Q8EoqJUzwM/+asqWUXM55rGKDP6yHA0WiBlV/vsiax0OXIxgbXIZeD/xKd
	XSvxTqDVhUn5fjihxAsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmQyt-00028V-Qw; Sat, 13 Jul 2019 22:59:03 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmQyd-0001zI-N8
 for linux-rockchip@lists.infradead.org; Sat, 13 Jul 2019 22:58:49 +0000
Received: by mail-ua1-x943.google.com with SMTP id j8so5375324uan.6
 for <linux-rockchip@lists.infradead.org>; Sat, 13 Jul 2019 15:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C521pemh84hQDpPKGvZwcyDQbmvvEOy9KjEBffRDfy8=;
 b=tMVaEtsma6gM3qxAeq2DWlq9ccipMteWpzx1QSsbtJxp1KQsgpUK1O3Xm3rUL7U5d6
 7HIlcZjebo4lVO1eu7C9v7gvyXfkALLm01JlnyVN1tom+hEFpiwojkqysbG+gMY8eAFU
 19eHob+krzEh4d+U1Rt3N+ZUqIK0qMaXE6YwJAClmNlCZvYNRPxV/qsRQUnAPU3nqWd5
 tL6X3DfIXabcYmh0gJ8H2oOt2n0UMY5pkjVBuG/IN7GzDV502O1UVmZehdQQIDupVzto
 9in+iY7dMAO36YkrkXzPqfuQtXMBScjUQpLZBG7jDuXub8zkFyZa4zLDdSnd322Pjcq0
 8L1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C521pemh84hQDpPKGvZwcyDQbmvvEOy9KjEBffRDfy8=;
 b=BvzLn09wu0rapFQPH+/ESboKb9er5sKAl4/UJKKaGbVnkZs/uw1CIIqJ7Qx44sK7Ch
 somallab+ok6Q8W3M6r213B831NSaPg0sV4bE8eIosyl+NsPw1OcP8l1JNZx/7WHLwt8
 FTLzh/Fut9EmSinj0ZLRedr7BlEwA3mzkwmdQ/O6fOeBoUnbtuY7c5YqZKIu3W6ZYV1I
 kd7VX5WM1oULM1+dSztEfrKxB6xzsWzRi1Z0KiFEcNSnWCEzpovALnHRiIcOCy7zheEa
 muAEEr+UktkY8wp+9nRXytxddZxkY4fPtSPP7scyU/0K9AFvKGHPBggRqsoOcHucIJy0
 f4+w==
X-Gm-Message-State: APjAAAW7VZltINXBSS832xY5gI1NqNRQyqkE1DEYoahbV5F+IXn8KRmf
 3OpymmPkH5yPAumJ6uFQ/5oV7TxM0/B+c61jiEE=
X-Google-Smtp-Source: APXvYqy9iyOxbGuuKGCYA7P9x4/jCssoGs1MvrDafxGacYP2yXkE8lKvX3eDFZmQr3u0yULaYS1miZoz7xW6gN4q6+4=
X-Received: by 2002:ab0:2a49:: with SMTP id p9mr12794749uar.0.1563058726092;
 Sat, 13 Jul 2019 15:58:46 -0700 (PDT)
MIME-Version: 1.0
References: <59042b09-7651-be1d-347f-0dc4aa02a91b@gmx.co.uk>
 <5fe66d5d-0624-323f-3bf8-56134ca85eca@gmx.co.uk>
 <f47f8759-8113-812a-b17a-4be09665369e@gmx.co.uk>
 <2648434.ut0pN6mfR1@phil> <2d52b787-187c-5638-660c-33d51a07770c@gmx.co.uk>
In-Reply-To: <2d52b787-187c-5638-660c-33d51a07770c@gmx.co.uk>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Sat, 13 Jul 2019 19:58:38 -0300
Message-ID: <CAAEAJfAeZaT5wd4k8Lkf6T3G7LpK5LmOOG2ZbVJAQ6Xb7Wtdcw@mail.gmail.com>
Subject: Re: [REGRESSION] Xorg segfaults on Asus Chromebook CP101 with Linux
 v5.2 (was Asus C101P Chromeboot fails to boot with Linux 5.2)
To: Alex Dewar <alex.dewar@gmx.co.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_155848_177352_21091A40 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, Heiko Stuebner <heiko@sntech.de>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, 13 Jul 2019 at 13:43, Alex Dewar <alex.dewar@gmx.co.uk> wrote:
>
> On 13/07/2019 16:17, Heiko Stuebner wrote:
> > Hi,
> >
> > Am Samstag, 13. Juli 2019, 13:38:45 CEST schrieb Alex Dewar:
> >> I initially thought my machine was failing to boot entirely, but it
> >> turns out it was just failing to start the display manager. I managed to
> >> escape to a tty by hammering the keyboard a bit.
> >>
> >> I suspect the culprit is the rockchip_vpu driver (in staging/media),
> >> which has been renamed to hantro in this merge window. When I run startx
> >> from a terminal, X fails to start and Xorg segfaults (log here:
> >> http://users.sussex.ac.uk/~ad374/xorg.log). X seems to work without any
> >> issues in v5.1.
> >
> > 5.2 also has support for Panfrost (Mali-Midgard GPUs) but I'm not
> > sure if it already can support X11 yet and your X11 log mentions
> > libglamoregl in the segfault stack trace.
> >
> > Apart from it bisect that Greg suggested you could also just try
> > blacklisting either panfrost or vpu kernel modules
> > /etc/udev/somewhere . This would prevent them from loading
> >
> > Hope that helps
> > Heiko
> >
> >
>
> Hi Heiko,
>
> Thanks for this. I blacklisted the panfrost driver and X magically
> started working again.
>
> I'll try to do a bisect later to find the offending commit though.
>
> In related news, it also seems that the sound and wifi drivers aren't
> working either in 5.2 (although I need to do a bit more testing to
> confirm the latter).
>

Adding myself and Tomeu.

Perhaps we need to disable Panfrost from defconfig from now?

Regards,
Eze

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
