Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A4BAEB20A
	for <lists+linux-rockchip@lfdr.de>; Thu, 31 Oct 2019 15:02:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NcAko8fSsE7c4KXTZkrZKcHuBfo4XqHysfEV/dBIuvA=; b=q9Ms4AIWzpR67g
	l5ZqkZ/qfwUC9lwIiTlOCoVpcehFWZU9E5udak1j9W1Xad2SJw0QPEiTWViYp6OwbuXf2HrzF2/Eg
	kt5Dj59biC6mmZgcMetk9yJykEmEkc9ojs3TYp8CMC+h5Cqkp6bCbD3MOh57a7p0EZB+xtRzKRlzc
	id1NR3byt86t/faLVnQyaRt+YjYqGc5IxBsoRpUi4/HFi91q1Sy30UhYnmBGRruk1SfitcAkE0vx0
	6GIxGxlu590eLEY00l9SIPZYEtev1ogM07YPz1a/gfFWBTsaTy0qjLYe0a9gKGFJOADRJ0Vfpmrx9
	1R43R+YppkcCw/u8tzxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQB2E-0001kt-54; Thu, 31 Oct 2019 14:02:46 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQB1q-0001OR-PT
 for linux-rockchip@lists.infradead.org; Thu, 31 Oct 2019 14:02:24 +0000
Received: by mail-qt1-x843.google.com with SMTP id y10so1891282qto.3
 for <linux-rockchip@lists.infradead.org>; Thu, 31 Oct 2019 07:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9U8kV4D1Gg2A+dDVYNi7eEXaajntxly6FVxq8PhLcdA=;
 b=MFhD2wZSjoiCf2oSfDk42E+jGqzAy7v6kfuam3bIrjnt5nUXUsiKhcZ+m0YK2dm/EE
 okwgygJXx0BVhlTZUuupLxV6ra4sdoECJPru+6oySp6tupOYCj6VZ5aEyR63z0NS4QgZ
 q09y0sx5ciefinzgPtpDPKq6OkKuMwSCTwl4CCOEPa49bweu8i8AT1LAT47hbRiAOrue
 5aSwsNRRRX3cDy9BpjtIPEfb5dZS/e3hkdHWQJvVf6jIRILt19H9ZjAeROLAQoxb74yT
 m9inFpREciAG5DaY2pOHDLDSWqEBibcSDfAbPMTDgJkSl3n0RKEZcp5/hTxzv8u2C7dg
 33fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9U8kV4D1Gg2A+dDVYNi7eEXaajntxly6FVxq8PhLcdA=;
 b=rsEkcg2VqButGEkTLMXHL2o33WDt4C0y/EzV0h9zknwPtw2Ys1Uh4Rc5tbUddw8L4q
 SoIJ/Vx8v0b82x3cVEIQczyI+REMl4kD/74pccXHexrqo+FbgwSWwsrb8rY2GhwimhlO
 YI0egktEArJePdRNtEbagxyteMaiB6JBrt/jMn2Rx3EUeoHbKUg8iYGfZMma6fl/aDoS
 hjrWnCs5UQxjicpn6mztyrh0GSw65OqiqKXKmuO6XFiuT051Bzj65u+/+Km/P2WQ/xjl
 nSZryPiK339fe97OT86Z8CNNIu5eCrwXU8UEoW97xhoWYxGYyjv7E3sleuu3LIffQJ5G
 UNjA==
X-Gm-Message-State: APjAAAV8JrjpwBZgm4NBf67pRraipBetOOXNtnSohOGYask+LLUMVj0r
 B9DjMKULNEbxC3ykX2xJ8p5I/qWQVATnQhJK6uxBXTcKH+Y=
X-Google-Smtp-Source: APXvYqz8s2rhb/E9s0n5S/5K6nTXSWurkgqJi1TBdzTROz2l+e97qSBc9wCRc9lQ9zFJF4hBeprXkShnMaSBegCLfIE=
X-Received: by 2002:ac8:7608:: with SMTP id t8mr5573256qtq.356.1572530539199; 
 Thu, 31 Oct 2019 07:02:19 -0700 (PDT)
MIME-Version: 1.0
References: <20191028182254.30739-1-pgwipeout@gmail.com>
 <20191028182254.30739-2-pgwipeout@gmail.com>
 <10419898.gYlDFaIxON@phil>
 <CAMdYzYqex=xoXR+Xhg=LNwEa0hobbSghRzj8AkmVOSNhp7x1-A@mail.gmail.com>
In-Reply-To: <CAMdYzYqex=xoXR+Xhg=LNwEa0hobbSghRzj8AkmVOSNhp7x1-A@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 31 Oct 2019 10:02:07 -0400
Message-ID: <CAMdYzYpgjV7AwbF97gs7amuh6WGu0Mbzv_-ziWOZTYX0qe6rsQ@mail.gmail.com>
Subject: Re: [PATCH 1/5] phy: rockchip: add inno-usb3 phy driver
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_070222_850467_CF8B8A45 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-usb@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 1:46 PM Peter Geis <pgwipeout@gmail.com> wrote:
>
> On Wed, Oct 30, 2019 at 4:15 AM Heiko Stuebner <heiko@sntech.de> wrote:
> >
> > Am Montag, 28. Oktober 2019, 19:22:50 CET schrieb Peter Geis:
> > > Add the rockchip innosilicon usb3 phy driver, supporting devices such as the rk3328.
> > > Pulled from:
> > > https://github.com/FireflyTeam/kernel/blob/roc-rk3328-cc/drivers/phy/rockchip/phy-rockchip-inno-usb3.c
> > >
> > > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> >
> > What happens on plug - unplug - plug?
> >
> > I remember what kept me from pushing the usb3 stuff for rk3328
> > was the usbphy breaking hotplug after the first unplug.
> >
> > Did this get fixed?
> >
> > Thanks
> > Heiko
> >
> >
> It seems to have been corrected, at least partially.
> The hotplug issue may have been resolved by [0].
Other possibilities are two commits [1], [2].
One disables usb3 autosuspend, the other adds a linestate quirk.
[1] https://github.com/FireflyTeam/kernel/commit/1758c75d334c7b321a86708797541e05e9301ec5
[2] https://github.com/FireflyTeam/kernel/commit/65bfd30a169c880da359a6dfef032b670457debd
>
> On my rk3328-roc-cc board, both USB2 and USB3 work correctly for
> hotplugging with this driver.
> I did encounter some odd behavior with the USB2HOST port, where it
> stopped reading FS devices when this was loaded.
> I'm wondering if we have a common clock problem or some other
> undocumented shared dependancy.
>
> Robin encountered some odd behavior when unplugging a USB3 device, the
> controller didn't recognize it for a while.
> I don't have that problem, but I don't know what board she's using.
>
> [0] commit fb903392131a324a243c7731389277db1cd9f8df
> clk: rockchip: fix wrong clock definitions for rk3328

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
