Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFDB1A2826
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 Apr 2020 19:57:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XuabOPFByeaHzV2uyOeTfjMIvAKZABQ2n1jaiiWx1dM=; b=LoG1al1j6QUCxg
	XS+EFeXn3xARV2BAh+Z+Pl8RLq1ixzPkiaUSBhAuDcxz/McOFse1ETRmi+KkHOc/Q406LoJNyJVnA
	eSghrPwIt+j2hiujyk28BSY0qtZYxD+o1pwS/Fr5KXPdCuq4JvaJXCLGDaz7wqPebwkooG/jvOFus
	52sq0dQlAZOClmxuozTQD4pU5Ow/AgW2irs6nRgdCfARfQt96y2Qv2Iwyp3jp+EsFf1TGGFS7M2Ka
	LclBFil02HXRuiceTNVzguUduOfH1neuXfWpr+AZc6I3AuYcd9mcYyl2p1i4npRtdrZWQ2DtwrUXf
	DTKooOW+rA2xTrExQonA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMEwY-0007Ao-RW; Wed, 08 Apr 2020 17:56:54 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMEwN-00072u-SA; Wed, 08 Apr 2020 17:56:45 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id A28FF296F5E
Message-ID: <3336c3105120d2f90dbc20d47ff98e722a123d5b.camel@collabora.com>
Subject: Re: [PATCH] media: staging: rkisp1: avoid unused variable warning
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Arnd Bergmann <arnd@arndb.de>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Helen Koike <helen.koike@collabora.com>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>
Date: Wed, 08 Apr 2020 14:56:21 -0300
In-Reply-To: <20200408155325.2077345-1-arnd@arndb.de>
References: <20200408155325.2077345-1-arnd@arndb.de>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_105644_042115_8A01FAA9 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devel@driverdev.osuosl.org, Eddie Cai <eddie.cai.linux@gmail.com>,
 Jacob Chen <cc@rock-chips.com>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Jacob Chen <jacob2.chen@rock-chips.com>,
 Jeffy Chen <jeffy.chen@rock-chips.com>, Yichong Zhong <zyc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 linux-rockchip@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Allon Huang <allon.huang@rock-chips.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Shunqian Zheng <zhengsq@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, 2020-04-08 at 17:52 +0200, Arnd Bergmann wrote:
> When compile-testing with CONFIG_OF disabled, we get a warning
> about an unused variable, and about inconsistent Kconfig dependencies:
> 
> WARNING: unmet direct dependencies detected for PHY_ROCKCHIP_DPHY_RX0
>   Depends on [n]: STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=m] && (ARCH_ROCKCHIP [=n] || COMPILE_TEST [=y]) && OF [=n]
>   Selected by [m]:
>   - VIDEO_ROCKCHIP_ISP1 [=m] && STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=m] && VIDEO_V4L2 [=m] && VIDEO_V4L2_SUBDEV_API [=y] &&
> (ARCH_ROCKCHIP [=n] || COMPILE_TEST [=y])
> 
> drivers/staging/media/rkisp1/rkisp1-dev.c: In function 'rkisp1_probe':
> drivers/staging/media/rkisp1/rkisp1-dev.c:457:22: error: unused variable 'node' [-Werror=unused-variable]
>   457 |  struct device_node *node = pdev->dev.of_node;
> 
> Simply open-coding the pointer dereference in the only place
> the variable is used avoids the warning in all configurations,
> so we can allow compile-testing as well.
> 

Hello Arnd,

Thanks for your patch.

I believe this is already fixed here:

https://patchwork.linuxtv.org/patch/62774/
https://patchwork.linuxtv.org/patch/62775/


Cheers,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
