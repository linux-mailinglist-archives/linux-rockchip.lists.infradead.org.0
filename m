Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C348EA2BB
	for <lists+linux-rockchip@lfdr.de>; Wed, 30 Oct 2019 18:47:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e95aoWOjZfpqhd/stzcsafi2uK41gOBgNIJaT9QRNhM=; b=tL4KBbO0HQNCLa
	4b4tMdu90gWnI8IoiBwcVEBQYlL5LmfsBtlLxbTJeHcNHozkxyj1nw2Xg8mekCfJ4sgY9x6/vr+kg
	QncLoBgNv6q7so9rBqeVch3T++f7Obp/s8swH6NyBBXSs95qyTpz1dGEJkLwes0vImkBXt9IB9UlM
	kBmcqXQMssVcei8YCGKl5HizAv2CK7w78p2bbal7LkbOYiDdP4J5Tus29GoQ3QcSyCYWgNOePfutg
	fTZ60dWCVZz2Af75UkCnwjFizm2tZIUMNlH/q+0KFm3lLIH/1bnH26CNC+POngxw1gIRVlwb02ZLS
	3QbHdaVeboNq//fPoCEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPs3d-0000OJ-8R; Wed, 30 Oct 2019 17:46:57 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPs3X-0000HJ-B9
 for linux-rockchip@lists.infradead.org; Wed, 30 Oct 2019 17:46:53 +0000
Received: by mail-qk1-x743.google.com with SMTP id u184so3658488qkd.4
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Oct 2019 10:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ucIocynurZX+WNdITziqx8HGpkQurBpCPdDOY5bggKY=;
 b=Kmt9W75bDia/67F5McEm1WiU5E4DN8VImX7goNG/Bo6e4D5tHa+tAZJkDH2NU43FVe
 3DWWkjAJXFZnq7XUPsZkpljuRahXrwx9o8AOj4eeBX5l3/gN5pHZmyagMT/rjEVc5JBq
 an/saC0K7/1YZQEH7jwv8cwP0bq7T40ydmzOTCQqTpPu87m6HwvU35uealADV1t24Ewm
 c2kfJk9fWPmqqVct25WKo1PjuQ/PXcqumrbdoimx5dO73UFwxAvlr/MBqZhWYJ3DlyNk
 0/w3dDViid0yiroGYhiuy8BZkI+kSJotM+pwDzqxWPRPvsj9H9UmuZ/bcd2g+rtLz52X
 VUAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ucIocynurZX+WNdITziqx8HGpkQurBpCPdDOY5bggKY=;
 b=g0AVJZvzvo7AJ/tgQKE6CNtRmFsXQXoyjiRMmq2nE1HG5j3vZQfbQjM+whYhI5GmZx
 z8DP746H0mJssKE2hjeyMorIijGrzfk1TZfDdA+dF7FhGd5v3P8OD5Ac1CACifFP+hWr
 xM5vCd1f4r7WImpZ5xoPFO3iTUEmINZVfQ9ymxnfp5GHdwc5mwAj4UCJclDcSlHoV7U6
 XuhDRtXo/4zrJ5e1EklklfQUg7G+Sw+SyR1rBCgXu/Pwgal21C3xzfARcu4ye/SNWhuY
 DWNbHvp4j6UUHovObmJKhFfp+UhXER2qDm3TeoJ2oak6ySosbu8oXiCyTdIT40CG6+8s
 snRg==
X-Gm-Message-State: APjAAAUXZEkhp7X/G8fgQYqQFDXvJafTRvUeOF76uMJ97Sy6orJulrYE
 R2pPtLsZYQWj2+cmvWJRinRYTCTeVu5OuIDQRKzZMZ3zhUw=
X-Google-Smtp-Source: APXvYqy85loESKPADojLzmsz9Pewy7Ser5st4huiypUxW1NmyHp+Pv+dfWbrl+BzcoW6eu7hRJSeTwYpossOBMT6cWg=
X-Received: by 2002:a05:620a:237:: with SMTP id
 u23mr1186097qkm.484.1572457609542; 
 Wed, 30 Oct 2019 10:46:49 -0700 (PDT)
MIME-Version: 1.0
References: <20191028182254.30739-1-pgwipeout@gmail.com>
 <20191028182254.30739-2-pgwipeout@gmail.com>
 <10419898.gYlDFaIxON@phil>
In-Reply-To: <10419898.gYlDFaIxON@phil>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 30 Oct 2019 13:46:31 -0400
Message-ID: <CAMdYzYqex=xoXR+Xhg=LNwEa0hobbSghRzj8AkmVOSNhp7x1-A@mail.gmail.com>
Subject: Re: [PATCH 1/5] phy: rockchip: add inno-usb3 phy driver
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_104651_458721_B57099BE 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
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

On Wed, Oct 30, 2019 at 4:15 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Am Montag, 28. Oktober 2019, 19:22:50 CET schrieb Peter Geis:
> > Add the rockchip innosilicon usb3 phy driver, supporting devices such as the rk3328.
> > Pulled from:
> > https://github.com/FireflyTeam/kernel/blob/roc-rk3328-cc/drivers/phy/rockchip/phy-rockchip-inno-usb3.c
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
>
> What happens on plug - unplug - plug?
>
> I remember what kept me from pushing the usb3 stuff for rk3328
> was the usbphy breaking hotplug after the first unplug.
>
> Did this get fixed?
>
> Thanks
> Heiko
>
>
It seems to have been corrected, at least partially.
The hotplug issue may have been resolved by [0].

On my rk3328-roc-cc board, both USB2 and USB3 work correctly for
hotplugging with this driver.
I did encounter some odd behavior with the USB2HOST port, where it
stopped reading FS devices when this was loaded.
I'm wondering if we have a common clock problem or some other
undocumented shared dependancy.

Robin encountered some odd behavior when unplugging a USB3 device, the
controller didn't recognize it for a while.
I don't have that problem, but I don't know what board she's using.

[0] commit fb903392131a324a243c7731389277db1cd9f8df
clk: rockchip: fix wrong clock definitions for rk3328

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
