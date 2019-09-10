Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F463AE7B2
	for <lists+linux-rockchip@lfdr.de>; Tue, 10 Sep 2019 12:14:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cas3ZIBPQEglSn6r/n1OUjk32Sj5PqeR5F9pESBWzuU=; b=l1jNpSqXqizlZa
	6fKcfn8SCl5zcQIgv0v20p9K0e2CA4EALDfAW28IeUqWk1ZADhPRmh0T9EuxpQJloAt7sD1wDSxpv
	k/5OXqhHk9vH1WmHGoSuEEUC97GMI8fggRrT4DXOagORcFhHUiQ1PUU/T2lrqzEJR+KmJMV1xDIQQ
	Biok8TgHfNvGUwaMr5V19uU5cyhGtUyVcLK3n5Sunrm2qBlauzohZ7bMxI+X4PqVZ/do/ImbSCMDi
	xMss1o0FcZBzrj51gtaATmt2i7rF8t9qLtps68TbR7Rz4F6WAE8Kz6ytkzuns9LUo6KtsOdKZ1V5D
	OqPJichidbppTg37B7KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7dAK-0003fn-Rx; Tue, 10 Sep 2019 10:14:28 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7dAG-0003eo-By
 for linux-rockchip@lists.infradead.org; Tue, 10 Sep 2019 10:14:26 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id B932128C51D
Message-ID: <56f8886353ced71426e2ce6442eed18fe349cdab.camel@collabora.com>
Subject: Re: [PATCH 02/12] media: hantro: Do not reorder H264 scaling list
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>, Philipp Zabel <p.zabel@pengutronix.de>
Date: Tue, 10 Sep 2019 11:14:17 +0100
In-Reply-To: <HE1PR06MB4011A8F99D58E5ACFAE3CECAACBE0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20190901124531.23645-1-jonas@kwiboo.se>
 <HE1PR06MB40116C92C3D52C5957EF48E9ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <1567432843.3666.6.camel@pengutronix.de>
 <HE1PR06MB4011A8F99D58E5ACFAE3CECAACBE0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_031424_797289_3C704AD6 
X-CRM114-Status: GOOD (  12.03  )
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
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Jonas,

Thanks for your patch.

On Mon, 2019-09-02 at 16:18 +0000, Jonas Karlman wrote:
[..]
> 
> > > diff --git a/drivers/staging/media/hantro/hantro_h264.c b/drivers/staging/media/hantro/hantro_h264.c
> > > index 0d758e0c0f99..e2d01145ac4f 100644
> > > --- a/drivers/staging/media/hantro/hantro_h264.c
> > > +++ b/drivers/staging/media/hantro/hantro_h264.c
> > > @@ -20,7 +20,7 @@
> > >  /* Size with u32 units. */
> > >  #define CABAC_INIT_BUFFER_SIZE		(460 * 2)
> > >  #define POC_BUFFER_SIZE			34
> > > -#define SCALING_LIST_SIZE		(6 * 16 + 6 * 64)
> > > +#define SCALING_LIST_SIZE		(6 * 16 + 2 * 64)
> > This changes the size of struct hantro_h264_dec_priv_tbl. Did this
> > describe the auxiliary buffer format incorrectly before?
> 
> Based on RKMPP and Hantro SDK the HW expects the 8x8 inter/intra list for
> Y-component to be located at indices 0 and 1, lists for Cr/Cb is only used for
> 4:4:4 and HW only supports 4:0:0/4:2:0 if I am not mistaken. So the unused
> extra 4 lists at the end of the auxiliary buffer seemed like a waste,
> also RKMPP and Hantro SDK only seemed to allocate space for 2 lists.
> 

I think it would make a lot of sense to document what the hardware
expects somewhere, perhaps as part of the struct hantro_h264_dec_priv_tbl
documentation?

Thanks,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
