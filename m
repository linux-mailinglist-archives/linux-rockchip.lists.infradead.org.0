Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70207FFCB2
	for <lists+linux-rockchip@lfdr.de>; Mon, 18 Nov 2019 02:05:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QvFV0+RQ6l+o7Bq1jaX3dY1S99F4YTciMEhrsMyt7nw=; b=GQ+0jgsKrG+N6m
	Rztmd0j+IktPdvTdMUnaVvAc9UlDNihHgI2v9gi5gYylW0pC6j6OE9ct710ZiKTUyGKngr1GG5rYv
	0x8+3xfAV8Ff05HHcPyflXNqZs7ojnw182astw2rWrHS4dqzlROhz/4QtkQ97aKaKHRl/Vb3qzvMW
	rhvfVCQIbSE96jKlI6dx0w69L6Eh4RgZU8PkFkArO7OxVWLMD65x3TR0qsO+eYgbLnJ+Jq+B4USWL
	mM+odi/nMmltdpI0QgQpb4kIn/xEwPJnKC+u+6gqRu02JoYgWQ78xXZWRYdDvwC9aNkKHnmXXdzPD
	+SNFhrSaGwZBtutnkWAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWVUI-00027c-89; Mon, 18 Nov 2019 01:05:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWVUE-000277-JY; Mon, 18 Nov 2019 01:05:51 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iWVU1-0003kF-4y; Mon, 18 Nov 2019 02:05:37 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 3/3] arm64: dts: rk3399: Add init voltage for vdd_log
Date: Mon, 18 Nov 2019 02:05:35 +0100
Message-ID: <2815649.1XujLjda4c@phil>
In-Reply-To: <b752ba88-8931-0e03-a010-650129253afd@rock-chips.com>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <1780044.CQmMckQ5VN@diego>
 <b752ba88-8931-0e03-a010-650129253afd@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_170550_787926_593E3D01 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Alexis Ballier <aballier@gentoo.org>,
 dianders@chromium.org, Soeren Moch <smoch@web.de>,
 Hugh Cole-Baker <sigmaris@gmail.com>, Andy Yan <andyshrk@gmail.com>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-rockchip@lists.infradead.org,
 Pragnesh Patel <Pragnesh_Patel@mentor.com>,
 Peter Robinson <pbrobinson@gmail.com>, Nick Xie <nick@khadas.com>,
 devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>,
 Vicente Bergas <vicencb@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Akash Gajjar <akash@openedev.com>, Ezequiel Garcia <ezequiel@collabora.com>,
 linux-arm-kernel@lists.infradead.org,
 Andrius =?utf-8?B?xaB0aWtvbmFz?= <andrius@stikonas.eu>,
 linux-kernel@vger.kernel.org, Oskari Lemmela <oskari@lemmela.net>,
 Robin Murphy <robin.murphy@arm.com>, Vivek Unune <npcomplete13@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Kever,

Am Mittwoch, 13. November 2019, 04:21:35 CET schrieb Kever Yang:
> Heiko,
> 
>      Could you help to just pick the first patch and drop the other 2 
> patches?

I did as requested now :-)

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
