Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8453510972F
	for <lists+linux-rockchip@lfdr.de>; Tue, 26 Nov 2019 01:06:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=202GOdGqx906rfjujQS44K6JWlTLx5iTo0Wx2KX/kVE=; b=Wap2tqYeB3YEsh
	xoear82OSJ1QLRcUeWzHN4i1pLkZKQyZDqQlvgTLPq1KUBiSM9CyP+WvmmcOgC4bPqFcVaQwBSO3F
	AjB2Dj93Wh8u4akxKbbPKqIKx34xhFIVTPf4mflE+JUjp1+wbZy1domyxJhiQapVpaVrrf1Jar7vx
	TDteMsZA8L+X/nCn4b1f5sfx9d6yCWxjsy42KSfyoiObV2vKVMiOceyEqV2QHeQ5b53jzfp3e377t
	j2TvX7fgv6rYiVFCIjp9p8KP+Cn7FAs1FTg+a0N2NZNIv7MJE2OQuFQY9vn4yoyt2weJ0GcPUe/u3
	WXOLJCIRrb4KQX0f2D3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZOMq-0003PW-7t; Tue, 26 Nov 2019 00:06:08 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZOMm-0003Ou-2H
 for linux-rockchip@lists.infradead.org; Tue, 26 Nov 2019 00:06:05 +0000
Received: by mail-qv1-xf42.google.com with SMTP id i3so6551208qvv.7
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Nov 2019 16:06:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=icSEVagNMiXCckqxRkOBiAt2wuOuJ93eAeweRG0aO4A=;
 b=kop17a/LuvEwcX+O9nnjP/yvndLPDoZ/riuBfY1QveWN/9ydD+3rAPXlwND9S+vZj0
 03Il+FQ/Vq+OOHsp/xs9iszgMZ9kY8u+91VD7tgrQ8RmIn85haSsoYZCXKkasM7d+GDK
 ESTeXPoCipGhYTbWIliFF3I1ICzwdvtcZWH2qq8kvTWQ/ZvL/BbzQiDEs4oAe0VRxxPi
 SqIFrWZua1qzFfGBluyxbrNUc+O+NSst6wXRpXofSjMHsIalv+tU3tYqh3soRhPAGsAW
 uNijFrJpVA+BHKUno3cC4YCdecjf5w1Z4FFUF6OxybflJOGLEnvOKFIQZ//l/jpqObEF
 LmyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=icSEVagNMiXCckqxRkOBiAt2wuOuJ93eAeweRG0aO4A=;
 b=ciUgUbzirFoq903eYcxrEKJtV1EvfGjrJDtcT6KYhpyijn0SKJ44U+zdXIQWO+xFXk
 L7U6yLffR0zzASGqti9cK8dzgeATWfivlVc4fx7l99dv3AaDrewx47rhludRm+QuwOlP
 enbN/91l/2r6HTiSN45r0oHw5frGfjZP3NJULLxNUvzWtvzRu1jDipEzvCatlsJl83Vb
 2mVoPK98HrSgPqJlg+mT3zJSGbZpyjyU4b4I6R/d6WsDQlBliGLp2Sh3uHvKlvuAW83c
 Vws3LiJ/ddkVcECaGcvgIsghFBTr6DXPubzopkUmewza0tFvl4TlcAppzote8eJOwC+p
 vvXQ==
X-Gm-Message-State: APjAAAXSNzKXumVoB9TcP1iXVlJUvP9zJsaWGtVzSFHM5QgjL4Dant6C
 JEhhXaBAPc4CRHdBfze1JlE0No11Ps4l8uetcRFBlQ4l
X-Google-Smtp-Source: APXvYqx6/GvRDbOJt3j3aJJODJWhDZF8TuqoEeZvfLrzIuoZ1lRQ8OT3MKfXBR34pAtv4sZxfkQhQtiRvGGLQ7bn41E=
X-Received: by 2002:a0c:9d0d:: with SMTP id m13mr30702777qvf.19.1574726760367; 
 Mon, 25 Nov 2019 16:06:00 -0800 (PST)
MIME-Version: 1.0
References: <CAMdYzYrLX=z-OVoW9RVecjoYK1J8EfLQ=cV1aNUqPsXqiOU+2g@mail.gmail.com>
 <2a5d91f1-033e-8acc-5b57-16ca77204a0b@arm.com>
 <CAMdYzYpdW13roxwHxD5w=XLBiyASp+biMqP-n2+QD9cL5g_hvg@mail.gmail.com>
In-Reply-To: <CAMdYzYpdW13roxwHxD5w=XLBiyASp+biMqP-n2+QD9cL5g_hvg@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 25 Nov 2019 19:05:51 -0500
Message-ID: <CAMdYzYoCzU4F66Hpdy6XBTWwWi+WmSo50R+sCSDEFOBKr84U1w@mail.gmail.com>
Subject: Re: [BUG] rk3399 fails to reboot correctly with PCIE device inserted
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_160604_131946_3E37EC12 
X-CRM114-Status: GOOD (  19.93  )
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

On Mon, Nov 25, 2019 at 12:10 PM Peter Geis <pgwipeout@gmail.com> wrote:
>
> On Mon, Nov 25, 2019 at 11:52 AM Robin Murphy <robin.murphy@arm.com> wrote:
> >
> > Hi Peter,
> >
> > On 25/11/2019 4:28 pm, Peter Geis wrote:
> > > Good Morning,
> > >
> > > Another issue I've come across while testing PCIE on the rockpro64.
> > > When a PCIE device is inserted into the board, and it enumerates
> > > successfully, the board will not reset.
> > > I've tried various states of u-boot-rockchip, u-boot-mainline, with
> > > both miniloader and TPL/SPL.
> >
> > In case it's relevant, what particular PCIe device(s) have you seen the
> > issue with? FWIW I've been running a Samsung 960 Evo NVMe in my
> > NanoPC-T4 with mainline kernels for months now and it's always rebooted
> > flawlessly.
> >
> > Robin.
>
> Currently with a I350 NIC, but also observed with a pcie switch, and the GTX645.
> The NIC works, while the other two didn't without the patch to hijack
> the error handler.
>
> I am running the latest atf built from their github.

On closer examination, it isn't the pcie devices causing the reboot
issues, the rk3399 just doesn't reboot.
It would seem the trigger with miniloader was random enough that it
appeared to be tied to my pcie testing.
It happens 100% of the time with tpl/spl.

>
> >
> > > With miniloader and both variants of u-boot, if you attempt a reboot
> > > it never fires the "reboot: Restarting system" message.
> > > If you trigger a sysrq reboot at this stage, it will reboot, but fails
> > > to start up the two a72 cores and subsequently hangs a second later
> > > when it loads the first dma driver.
> > >
> > > With TPL/SPL on mainline-u-boot (I can't get rockchip-u-boot to work
> > > with TPL/SPL), it fires the "reboot: Restarting system" message, but
> > > never reboots.
> > > sysrq does not function at this point.
> > >
> > > I believe the pcie controller is not being halted, and gets stuck in a
> > > loop with the two a72 cores.
> > >
> > > _______________________________________________
> > > Linux-rockchip mailing list
> > > Linux-rockchip@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-rockchip
> > >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
