Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 775CBAE7D2
	for <lists+linux-rockchip@lfdr.de>; Tue, 10 Sep 2019 12:18:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1KkHwCXqm20T7BZOjm5xgj6yHYUyZXUX3tPIm9f9dOk=; b=l4086G05V+yuAC
	Yh91wU0gVsclEd5oeJ0Mubhe96GzF3iXOKs3A2wSu3w6HUxDdZqmV1TBDv/Jxnr6Sbx6tvTTOo5R1
	KgRzhqc6Cew5Rfz+Tt5ribatCAiyzI0s/LLLv/TLV+SVTbJkh/2L83+OPEa9hxEGKHFH0WnT1lhXv
	BcwokhfCW4coANz3My4EEKgQqU8tLrJIceQzk5wA9XNIff1jqbYto1/NaCEfD8/Xj7WGVx1RAjqMp
	3U5jXthLSCVj+2oFdpDNAw+HFMLmlD2jruSnb2xle4w/orNGirs7VerqWLzuX4QhtjDBBCtvHd+Im
	U+1o/6mEHBXHhDO0dnng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7dEQ-0005TK-HN; Tue, 10 Sep 2019 10:18:42 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7dEN-0005ST-50
 for linux-rockchip@lists.infradead.org; Tue, 10 Sep 2019 10:18:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 8C97828C51D
Message-ID: <255f22b1ddea5fa81104865769eec0fcb5617b36.camel@collabora.com>
Subject: Re: [PATCH 03/12] media: hantro: Fix H264 motion vector buffer offset
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>
Date: Tue, 10 Sep 2019 11:18:34 +0100
In-Reply-To: <HE1PR06MB40115337CD86C429EF24430CACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20190901124531.23645-1-jonas@kwiboo.se>
 <HE1PR06MB40115337CD86C429EF24430CACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_031839_319460_66DAE4C4 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jonas,

Thanks for fixing this, I'm happy we are reducing the amount
of black magic here.

On Sun, 2019-09-01 at 12:45 +0000, Jonas Karlman wrote:
> A decoded 8-bit 4:2:0 frame need memory for up to 448 macroblocks
> and is laid out in memory as follow:
> 
> +-------------------+
> > Y-plane   256 MBs |
> +-------------------+
> > UV-plane  128 MBs |
> +-------------------+
> > MV buffer  64 MBs |
> +-------------------+
> 
> The motion vector buffer offset is currently correct for 4:2:0 because
> the extra space for motion vectors is overallocated with an extra 64 MBs.
> 
> Wrong offset for both destination and motion vector buffer are used
> for the bottom field of field encoded content, wrong offset is
> also used for 4:0:0 (monochrome) content.
> 
> Fix this by always setting the motion vector address to the expected
> 384 MBs offset for 4:2:0 and 256 MBs offset for 4:0:0 content.
> 
> Also use correct destination and motion vector buffer offset
> for the bottom field of field encoded content.
> 
> While at it also extend the check for 4:0:0 (monochrome) to include an
> additional check for High Profile (100).
> 

As with the scaling list, I believe it would make a lot of sense
to document this in the driver itself.

Thanks,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
