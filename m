Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD81189F9
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 May 2019 14:47:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XUSZ3LMqqLUq3UFhrdmvtEZcplTQ2elv9Kyz8TLkssY=; b=DAMYTI4r88jO46
	PWdiWYi6/bI1P69Dh4fveoaEygLsSyy3zSJEKk6dLJuY4F3P9Q+7tdTUFA/EmyuCSwZjQ7JCZhxK7
	+Dq4r0sJbfYRpXajX1QfdjCkTBwC1FI0IGdiI+DEP7MOrLVqPwwE6SaJk1WrCYVdFt9ihP3/Dw3LH
	2twChjF8oT7i09d+nrPpVEvzJNjAtvNM0X0V/db6SrBxSVIWu01Moi1n4ueOuinQpHRsiHN+n+Sr8
	VVAjxLdqasuU2CZNBZ4vO7uOle03dXCPmolkIUXS4pNmlt59zAxmx/uiiXaeNHo9lHYbYg8RRauKe
	7MI2VHpJfkp4/bOCox2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOiSE-0000eX-PM; Thu, 09 May 2019 12:47:18 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOiSA-0000e1-DM
 for linux-rockchip@lists.infradead.org; Thu, 09 May 2019 12:47:16 +0000
Received: by mail-io1-xd44.google.com with SMTP id y6so1486754ior.5
 for <linux-rockchip@lists.infradead.org>; Thu, 09 May 2019 05:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OZXwIDDGuOZ6ZsIDObq5ycHfRXvtqllCAeWruUBVWV4=;
 b=J/tdHA4W3CFZfdAbL0D+reJnpbQNqjycQ0aNaHs2LodyhoZQPMY0h14bprYb/W1G/4
 v5eKZj3uYO+kIHerHJrzHfV05j65HktOSd67KE6jL/C1kMwnZyaJIcgoVA4b9ysSFmHx
 D7UwSDv6DQg+/cLsux9oFhfFImIlXO2cEK42g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OZXwIDDGuOZ6ZsIDObq5ycHfRXvtqllCAeWruUBVWV4=;
 b=pvMMSFeToTh2Aja/lrdLQRQeuJwNMaR8i2h8nLJdrqY0tFe7/SNPiEv99CPmpbmnZc
 QQezBkTNQmdNvqNKRpgKXk0p3TzP7MLpw113HnoZc32muBDKHMO8P1O+vT0/BKeYUrPZ
 Ju2HgR5qG9+KuZgSyd5zj+XBGj6AGrYY8ZHAKfCFBabQAhGfuyn4dEHMpeaDfrkfdJwz
 jJbZ2tQEMtkep+PixuXznN3N345k9cJyzBpn6U3E9glS7ZxvdqWZmiO08FxkFnoe2xd/
 I86kVT76c6EY2awMXxKAHD4QUiRjw1xRX1a+oleAlxDCZGhnHTpfq82i7e8+buyGuLAR
 kt7w==
X-Gm-Message-State: APjAAAUrDspfN0DAT8VXOVVHPmZdwjkkDWL9S/vuhNT/BVrRYocVf5Wf
 NNKfR7zd5s355Su4ocG+e3d2O82laOwkuGi4YoWCsQ==
X-Google-Smtp-Source: APXvYqxlKJtioATz1NRNa6fSdCEHDJhdzxGstwyopKyO1R7wWL3qe85L0/iFkhpdZMTFgjWnACHgSaeuQ3sK06ctBQU=
X-Received: by 2002:a6b:bb82:: with SMTP id l124mr2531621iof.252.1557406033347; 
 Thu, 09 May 2019 05:47:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190508054151.21762-1-jagan@amarulasolutions.com>
 <b3755da63208dffc5c0f7676ece0fe55d4dfd4f7.camel@bootlin.com>
 <CAMty3ZBNGmO6Qjysih=4UROO4s6dyawWw8L13Ga7XFqBZyPdtA@mail.gmail.com>
 <2e7668d0bfd5d328c071730113fe8c63aaab62d0.camel@bootlin.com>
 <CAMty3ZCzY+UgHvA7gabt0vAbWR_zOGv3t=gFp9bJnmTOOU_aMg@mail.gmail.com>
 <a1561b748a379f0dfacee3adcad8955fcb90e103.camel@bootlin.com>
In-Reply-To: <a1561b748a379f0dfacee3adcad8955fcb90e103.camel@bootlin.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 9 May 2019 18:17:02 +0530
Message-ID: <CAMty3ZASYb_WxizOWZMa16GH8_CadcOFejstEZ5jEHsTkRC_aQ@mail.gmail.com>
Subject: Re: [RESEND PATCH v7 00/11] rockchip: Add new rk3399 boards
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_054715_097671_DA6158AC 
X-CRM114-Status: GOOD (  28.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, May 9, 2019 at 6:09 PM Paul Kocialkowski
<paul.kocialkowski@bootlin.com> wrote:
>
> On Thu, 2019-05-09 at 18:06 +0530, Jagan Teki wrote:
> > On Thu, May 9, 2019 at 6:01 PM Paul Kocialkowski
> > <paul.kocialkowski@bootlin.com> wrote:
> > > Hi,
> > >
> > > On Thu, 2019-05-09 at 16:15 +0530, Jagan Teki wrote:
> > > > Hi Paul,
> > > >
> > > > On Thu, May 9, 2019 at 12:38 PM Paul Kocialkowski
> > > > <paul.kocialkowski@bootlin.com> wrote:
> > > > > Hi,
> > > > >
> > > > > On Wed, 2019-05-08 at 11:11 +0530, Jagan Teki wrote:
> > > > > > (Sorry for the noice, I have missed to send two patches from v7)
> > > > > >
> > > > > > This is v7 resend patchset for New rk3399 boards support wrt previous
> > > > > > version[1]
> > > > > >
> > > > > > Unfortunately initial version of creating rk3399-u-boot.dtsi and
> > > > > > orangepi rk3399 changes are merged, so this is rework on top of
> > > > > > u-boot-rockchip/master.
> > > > > >
> > > > > > Overall this series add support below rk3399 boards
> > > > > > - NanoPI M4
> > > > > > - NanoPC T4
> > > > > > - NanoPI NEO4
> > > > > > - Orangepi RK3399
> > > > > > - Rock PI 4
> > > > > > - Rockpro64
> > > > > >
> > > > > > All the respective dts(i) files are synced from Linux 5.1-rc2 and few
> > > > > > dts(i) from linux-next.
> > > > > >
> > > > > > SoC u-boot specific dtsi rk3399-u-boot.dtsi changes are part of another
> > > > > > series [3].
> > > > > >
> > > > > > Out of all above boards Rockpor64, Rock-PI and Nanopi NEO4 would support
> > > > > > booting via Rockchip miniloader as of now.
> > > > >
> > > > > Could you send these two boards in a separate series so that we avoid
> > > > > merging them for now (because SPL support is broken) and then re-
> > > > > iterate the series later with the DDR bringup? Or maybe find a way to
> > > > > disable SPL support, but in any case, it's not ok to merge a board with
> > > > > SPL enabled and broken.
> > > >
> > > > I have explained the details about this concern on v2 [1], thought you
> > > > would comeback on the same line instead here.
> > >
> > > Yes, you have already explained the issue, but I don't think it's
> > > enough a justification to merge broken SPL support. If it was only
> > > partial or limited, it would be fine, but here it's just broken.
> > >
> > > > Anyway, making SPL as an optional is not an idea to go with Mainline
> > > > as we make many decisions with regards to make SPL is mandatory.
> > >
> > > Yes I think making SPL mandatory is a good idea, so that's why I'm
> > > suggesting that we don't merge the boards until they have SPL support.
> > >
> > > > Since the DDR is show stopper here (and it would really need a good
> > > > amount of time, since it effect the other boards), I can go with TPL
> > > > enabled boot-chain where ddr bin, SPL and U-Boot proper can be part of
> > > > booting stages. This way we can avoid skipping SPL usage, and many
> > > > config changes to make SPL optional.
> > >
> > > Honestly I don't really see the point of merging these boards at all if
> > > they don't have SPL support. People who really want to use them with
> > > the rockchip blob can cherry-pick the patches from the list in the
> > > meantime.
> > >
> > > It also creates incentive for people to free the DDR init, since that
> > > becomes a condition to have the board upstream.
> > >
> > > What do you think?
> >
> > I don't know whether you get my point or not? these boards are not
> > merged yet. What I'm saying is we are going to support them with
> > TPL-enabled, that was SPL can make use of these boards which still a
> > valid boot-chain. moreover this way can avoid touching core files and
> > no specific change require while supporting ddr dtsi.
>
> Ah maybe I missed the point indeed.
>
> So what you are suggesting is:
> rkboot (acts as TPL) -> SPL -> U-Boot?

Exactly, to make it confirm.

Here is boot-chain on NEO4:
------------------------------------

DDR Version 1.20 20190314
In
Channel 0: DDR3, 800MHz
Bus Width=32 Col=10 Bank=8 Row=15 CS=1 Die Bus-Width=16 Size=1024MB
no stride
ch 0 ddrconfig = 0x101, ddrsize = 0x20
pmugrf_os_reg[2] = 0x10006281, stride = 0x17
OUT

U-Boot SPL 2019.07-rc1-00243-gbd57cc7444 (May 09 2019 - 18:10:25 +0530)
Trying to boot from MMC1


U-Boot 2019.07-rc1-00243-gbd57cc7444 (May 09 2019 - 18:12:59 +0530)

Model: FriendlyARM NanoPi NEO4

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
