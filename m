Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57879E947E
	for <lists+linux-rockchip@lfdr.de>; Wed, 30 Oct 2019 02:15:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p53NI1CMH5WUute6igWP30ixdm1pz2FXLlldJzytrWs=; b=W+PvUOeirLOMIH
	F9uEcPv2szuxqWOBA0KX5bIXDYFlNBCpQQYyt2LRMScPdd9JrcqS2r0nGF6Fb52q1XITkMITalTnR
	Fp1XyCcgs1L0LqQp3QiVqAdeN/13NLtC7In2Mh+UV3fYqv0UgDhWWWMc2Zg1YxhcwTNS3t6g2VOkZ
	roLY7LpMjzXWWmXgZ6J8Maa4cnEtXL4ihpDFDIzys2w99aOWNLNhnebKaGCOqJfdz1oX3xwBpfp0R
	Y8R02/bLuIXLovh3hEqHcU7mVp4CPQ2xTlM+x78Wv5xHrj6p5+YsSa6MaZ8zudoo2A3Jo+2v5yNmS
	5uHoAsbKOc+FQb0mJ6iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPca0-0008Hs-9R; Wed, 30 Oct 2019 01:15:20 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPcZv-0008Gj-Ts
 for linux-rockchip@lists.infradead.org; Wed, 30 Oct 2019 01:15:17 +0000
Received: by mail-qt1-x844.google.com with SMTP id c26so935629qtj.10
 for <linux-rockchip@lists.infradead.org>; Tue, 29 Oct 2019 18:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VUfc6lAn/gdWl4VHYUwIgplvuaVBqXuhSoUl/uGlsWc=;
 b=dfNH2rJu30LT4bIn+Su7Gdd1oGp8P74+AedahtazKLFWg0Leyo2RIboMPFpH6RyybN
 ysiYfhsdBvAyydCDmu5Qbt7NoiOtqQzRcn62AuV9J3wkKS9Yy2WOSVvuQBGxwUkq0BZt
 PVLOccAxWfWerpu0VMglD8FXsIyk4Ra9C02t/Emlghx/ZfMMprsZ+H88cvmHEkWzsh1r
 /8NaETjQFCRPyp0q+kXThXVqgtHBLe9t8DhYtjg+JLEVnsZNzbNKboBeXIGQJDGFjM1V
 Vo93WCEisKHmRthVlrEFW8hec5IYzL0Fc0Yl0ZXh83dI8xZnQMGi1WVsV36WMw8x1Y7O
 R/hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VUfc6lAn/gdWl4VHYUwIgplvuaVBqXuhSoUl/uGlsWc=;
 b=tl4r+2DIayJXNBW3+mC/yQNPqODAmWuSXo77MBgLxosRHb7vj64/FGrFacOntyYP4l
 7jXeywQZBaG/em0ms7drCrbyyjpsfksZ0H+tE/haSfMEUDxdPtX8XEeF5n6C+7vP1kTL
 FxTV4jP+4EXPpgM5nxl0SusfuitWBwxQewifxxgWj8tX3QnBkmnLKo6mtnHJHhN1JLSM
 PiulJMh50xja/VoGaDIG2ierugJsbcN6nHEME8jccYF6/+uJd5d9+JPpEE77ph86v2xK
 oQaKd+dxop3hTzei6v9NOv1/gj/o7VETXplA6hefUWQh0XbmTJHEvGKoVhorJjl+aNVE
 NrYA==
X-Gm-Message-State: APjAAAXga9j4do0s1RE/RjyRUM7NZoDCMnzzRHs+cnZfYYOVxSfR2wsq
 F3Z4p/fCIFuK0cKxs6PWWO4Jp006V/rj/KrfDGg=
X-Google-Smtp-Source: APXvYqw1Mq1BLXrYG1IdTBI7uRLqwWBrE36qf+IbqHDoYWuMtr33L57uZHJFk+O7fzLv7RbmlV+G54xbw9rtqKFRppI=
X-Received: by 2002:aed:35e7:: with SMTP id d36mr2454296qte.59.1572398113953; 
 Tue, 29 Oct 2019 18:15:13 -0700 (PDT)
MIME-Version: 1.0
References: <20191028182254.30739-1-pgwipeout@gmail.com>
 <5230f80c-9684-72e0-8f96-602428a9e655@arm.com>
 <9e5546de-f5b6-7f60-96d0-612249e832ce@arm.com>
In-Reply-To: <9e5546de-f5b6-7f60-96d0-612249e832ce@arm.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 29 Oct 2019 21:15:03 -0400
Message-ID: <CAMdYzYrZhof2DtrNH4+Amu1ZN-6sWw57rC+2joqXSyWVn99wWw@mail.gmail.com>
Subject: Re: [PATCH 0/5] add rk3328 usb3 phy driver
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_181515_991321_4DEFB5AE 
X-CRM114-Status: GOOD (  21.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: katsuhiro@katsuster.net, linux-rockchip@lists.infradead.org,
 linux-usb@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, kishon@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Oct 29, 2019, 20:18 Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2019-10-28 6:41 pm, Robin Murphy wrote:
> > On 28/10/2019 18:22, Peter Geis wrote:
> >> It took a lot more effort than originally anticipated, but here it is.
> >> This is the driver from [0], updated to work with the current kernel.
> >> I've tested it on the rk3328-roc-cc board, both usb 2.0 and usb 3.0
> >> devices detect on hotplug.
> >
> > Thanks Peter, I'll try to give this a go on my box for confirmation.
>
> OK, I hooked it up with a vbus-drv-gpio hacked in - USB 2.0
> unplug/replug does indeed work fine, but it takes a while to acknowledge
> an unplug of a USB 3.0 device, and throws a bunch of errors every time:
>
> [  288.229568] usb usb4-port1: Cannot enable. Maybe the USB cable is bad?
> [  290.809599] usb usb4-port1: Cannot enable. Maybe the USB cable is bad?
> [  293.389594] usb usb4-port1: Cannot enable. Maybe the USB cable is bad?
> [  295.969600] usb usb4-port1: Cannot enable. Maybe the USB cable is bad?
> [  295.970418] usb 4-1: USB disconnect, device number 10
> [  299.209631] usb usb4-port1: Cannot enable. Maybe the USB cable is bad?
> [  301.789655] usb usb4-port1: Cannot enable. Maybe the USB cable is bad?
> [  301.790534] usb usb4-port1: attempt power cycle
>
> (although new devices are still detected OK eventually)
>
> Robin.
(Resending because I forgot the Android Gmail app fails at plain text)

Thanks! May I ask which board and what type of USB 3 device it was?
(I tried a usb3 hub and a Samsung sad)

Also I noticed some odd behavior when I was getting it to work.
When the u3phy driver loaded but wasn't tied to the controller, it
would put everything to sleep.
In this state, the u2 host port also failed to enumerate on boot.
It's almost as if they have something common between them that isn't
being accounted for in the u2 driver.
With the u3phy driver loaded and tied to the controller, I couldn't
get a low speed device to work in the u2 host port (the aeotec zwave
stick at 12m) but a hs device works fine.
>
>
> > One quick comment is that it might be worth importing the version from
> > Rockchip's own kernel tree, as that includes this additional patch which
> > looks like a welcome improvement:
> >
> > https://github.com/rockchip-linux/kernel/commit/12efa9acad65b4c3256683c1ccd769687be3ca56#diff-b6317b3425ac054be551abdcda910b68
> >
> >
> > Also, as it's a new phy driver, we should keep Kishon (+cc) in the loop
> > as the subsystem maintainer.
> >
> > Robin.
> >
> >> [0]
> >> https://github.com/FireflyTeam/kernel/commits/roc-rk3328-cc/drivers/phy/rockchip/phy-rockchip-inno-usb3.c
> >>
> >>
> >> Peter Geis (5):
> >>    phy: rockchip: add inno-usb3 phy driver
> >>    dt-bindings: clean up rockchip grf binding document
> >>    Documentation: bindings: add dt documentation for rockchip usb3 phy
> >>    arm64: dts: rockchip: add usb3 to rk3328 devicetree
> >>    arm64: dts: rockchip: enable usb3 on rk3328-roc-cc
> >>
> >>   .../bindings/phy/phy-rockchip-inno-usb3.yaml  |  157 +++
> >>   .../devicetree/bindings/soc/rockchip/grf.txt  |    8 +-
> >>   .../devicetree/bindings/usb/rockchip,dwc3.txt |    9 +-
> >>   .../arm64/boot/dts/rockchip/rk3328-roc-cc.dts |   21 +
> >>   arch/arm64/boot/dts/rockchip/rk3328.dtsi      |   72 ++
> >>   drivers/phy/rockchip/Kconfig                  |    9 +
> >>   drivers/phy/rockchip/Makefile                 |    1 +
> >>   drivers/phy/rockchip/phy-rockchip-inno-usb3.c | 1107 +++++++++++++++++
> >>   8 files changed, 1378 insertions(+), 6 deletions(-)
> >>   create mode 100644
> >> Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb3.yaml
> >>   create mode 100644 drivers/phy/rockchip/phy-rockchip-inno-usb3.c
> >>
> >
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
