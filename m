Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B6F1092A6
	for <lists+linux-rockchip@lfdr.de>; Mon, 25 Nov 2019 18:11:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zlBrW4PfwoK+MqWaO3oKBu3D5difG1s47UbPZJ2zkYw=; b=YL9CIKR8qO2LEi
	IzcswmCOcYYOma9P2zHFrI358SqCol3FRQ9nas1QVJzHB88/OQpS6v7AP8h9dniOgYsvAnyXjeuD9
	Lvd1t/xvZjfyRjE/Trj2MgBaSWIrUeQDA89yHZ2sbkFqFfKjxUhHmKsytxMsWoE/3Xic8VSwjTooE
	IydggmhV2uUwhXFpgVWsI7wpBZa9OQL3xPLK2GXGWdXbG+jDN5avAHPPzaqvaTBT3AukRxxkhy3I/
	dXn/AunymRsgtiKF8iZXYf4/N5K89jzW+lSfLB0DdpsTuO5f2AIzcxpEEbEvh586gX6OYVctvSJJs
	6CXfsh+KGkcArm8fyMMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZHt4-0006ud-Be; Mon, 25 Nov 2019 17:10:58 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZHsz-0006oG-2a
 for linux-rockchip@lists.infradead.org; Mon, 25 Nov 2019 17:10:55 +0000
Received: by mail-qv1-xf41.google.com with SMTP id d3so6012796qvs.11
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Nov 2019 09:10:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AbI5DX1N+53R+Tg7W+6eLrhfJB3nylwTf8f0nOcFBsU=;
 b=d0SQxahHcUYrIF8mJE4UdMY0c6AJZvHcPI5gkjzpFDbSAACS0JLyEBwQDmNGjr4/S1
 nx2JNztpQaGR+C1mkdWxT5zzCO6E5QuwGk8Dyn5IGDyJnxoCwdzbZVBB5Cado9dq6rCk
 p+jI9HSgjc7qowMkoPeG3KRjLMsK6mp4jzFf8RBClXn5g6USv82VYjeFUWu4FoEbzISX
 z5eO+EeumIFIDseQuu8Qvx31pM3Ganr/hrJD8jBRbXcApXqjJ2rQruIP96fE8nhfMKvj
 wE4ln+Bkq82L7RhfSwR5yXlb9/tQm2ETZ45pEKHg/2ODREtYK6HU+WxBoeILxHciFbwN
 fd+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AbI5DX1N+53R+Tg7W+6eLrhfJB3nylwTf8f0nOcFBsU=;
 b=t1K2nIllb5MnnfFADwsZPbnhZTEcBStGdYF/8+R6SDuPbYBpNO5QprcLMglq7FAP8M
 rK8r+af7SwB5MGFHJM2IylUYCKFecrZ+v947BOvzAs1j+RIH/2TucNxfoB9Y5dgi/UEN
 ULwMqjCCke59xlQxkdlRJGi5DF0HICxpVvL0x+iUaW7uFltVR1j+vtpcZIMNFLI1yUux
 axVJNUBBx9HZBZqmxUl25R+EPmfrS/HmFDeAumr21xyAqOUbC0DL1h0BTvT40tez5ks2
 SxWgchekPdoWGHqlovIG25HsyLIyd7THb1YcIZQdR/jLVDVVhNI8ay6l0HajecyefzfS
 uV3A==
X-Gm-Message-State: APjAAAUAUgbD91veFtE7a41+GJWuE6vmPUG+GIox0l7AxnurNNPf6Dhd
 sdtx63pzrvDvoDGMZqqIlZMlyHJbKRFur38Y3Sk=
X-Google-Smtp-Source: APXvYqyRn0XHI3WfU+DBuK2MbptE9/0k11Y8zLFJUKQVduTRbnYXga2QA5m1tS0wFvsiHH7sDxad6ndVfrfjkqJeJKA=
X-Received: by 2002:a0c:9d0d:: with SMTP id m13mr28676645qvf.19.1574701851494; 
 Mon, 25 Nov 2019 09:10:51 -0800 (PST)
MIME-Version: 1.0
References: <CAMdYzYrLX=z-OVoW9RVecjoYK1J8EfLQ=cV1aNUqPsXqiOU+2g@mail.gmail.com>
 <2a5d91f1-033e-8acc-5b57-16ca77204a0b@arm.com>
In-Reply-To: <2a5d91f1-033e-8acc-5b57-16ca77204a0b@arm.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 25 Nov 2019 12:10:31 -0500
Message-ID: <CAMdYzYpdW13roxwHxD5w=XLBiyASp+biMqP-n2+QD9cL5g_hvg@mail.gmail.com>
Subject: Re: [BUG] rk3399 fails to reboot correctly with PCIE device inserted
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_091053_130832_8D3C2644 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: heiko.stuebner@theobroma-systems.com,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Nov 25, 2019 at 11:52 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> Hi Peter,
>
> On 25/11/2019 4:28 pm, Peter Geis wrote:
> > Good Morning,
> >
> > Another issue I've come across while testing PCIE on the rockpro64.
> > When a PCIE device is inserted into the board, and it enumerates
> > successfully, the board will not reset.
> > I've tried various states of u-boot-rockchip, u-boot-mainline, with
> > both miniloader and TPL/SPL.
>
> In case it's relevant, what particular PCIe device(s) have you seen the
> issue with? FWIW I've been running a Samsung 960 Evo NVMe in my
> NanoPC-T4 with mainline kernels for months now and it's always rebooted
> flawlessly.
>
> Robin.

Currently with a I350 NIC, but also observed with a pcie switch, and the GTX645.
The NIC works, while the other two didn't without the patch to hijack
the error handler.

I am running the latest atf built from their github.

>
> > With miniloader and both variants of u-boot, if you attempt a reboot
> > it never fires the "reboot: Restarting system" message.
> > If you trigger a sysrq reboot at this stage, it will reboot, but fails
> > to start up the two a72 cores and subsequently hangs a second later
> > when it loads the first dma driver.
> >
> > With TPL/SPL on mainline-u-boot (I can't get rockchip-u-boot to work
> > with TPL/SPL), it fires the "reboot: Restarting system" message, but
> > never reboots.
> > sysrq does not function at this point.
> >
> > I believe the pcie controller is not being halted, and gets stuck in a
> > loop with the two a72 cores.
> >
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
