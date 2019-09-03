Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B3DA6C29
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Sep 2019 17:02:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sc33lDcZZN9GCop1pmaEnRbPrnGCfRrFx2/N6H1n1y8=; b=qjzvkhgvd6bmMT
	64CQM1AsCQUB6CZ6u7NHLOZiR9SeqQaZUL6oE7Y+8dKGpomdOc+WjETLla541ok9D0WWmDNVRQHcK
	L7KVNG6qjrZItxswbuQqri57cmG0nKhMFf0s+SM5HC1vRkknJU7ehe1rkIycYVwK8N+0K47DPqr76
	2BwKEVV1RG5hrlbuEd5kS0YrLp/jisM8xZrbGgPSozQ1tnqCjoW5CxnNpjUwyB4dxwPRl7LUx1zZL
	M2cpvTaYM7vA/ec62I08SKF3AmiI+g9aba3pCz+Lk2JLhPfEOSSD3H2ecxe9+ZYqT7Uwyto+wrl66
	Tn+JDao9K+BcNi7uhtzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5AJv-0004YR-Gp; Tue, 03 Sep 2019 15:02:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5AJr-0004XE-Vj
 for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2019 15:02:09 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1i5AJk-0008Fs-Uz; Tue, 03 Sep 2019 17:02:00 +0200
Message-ID: <1567522916.5229.11.camel@pengutronix.de>
Subject: Re: [RFC 08/12] media: hantro: Fix H264 decoding of field encoded
 content
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia <ezequiel@collabora.com>
Date: Tue, 03 Sep 2019 17:01:56 +0200
In-Reply-To: <DB6PR06MB4007C0F89BAEC6F9F1F2AA18ACB90@DB6PR06MB4007.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20190901124531.23645-1-jonas@kwiboo.se>
 <HE1PR06MB4011EA39133818A85768B91FACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <1567516908.5229.7.camel@pengutronix.de>
 <DB6PR06MB4007C0F89BAEC6F9F1F2AA18ACB90@DB6PR06MB4007.eurprd06.prod.outlook.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_080208_020195_1D3CBE6C 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Tue, 2019-09-03 at 14:02 +0000, Jonas Karlman wrote:
> On 2019-09-03 15:21, Philipp Zabel wrote:
> > On Sun, 2019-09-01 at 12:45 +0000, Jonas Karlman wrote:
> > > This need code cleanup and formatting
> > > 
> > > Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> > 
> > The previous patches all work, but this patch breaks decoding of
> > progressive content for me (i.MX8MQ with FFmpeg based on Ezequiel's
> > branch).
> 
> Please try with ffmpeg based on my v4l2-request-hwaccel-4.0.4-hantro branch at [1],
> up to and including the commit "HACK: add dpb flags for reference usage and field picture".
> That commit adds code to set reference flags needed by the changes in this patch.
> 
> There is probably also some other minor difference between our two ffmpeg branches.
> I have not observed any issues with progressive content with this patch and my ffmpeg branch (on a RK3288 device).
> Some H264 reference samples do have visual issues after this patch, however all my real world samples does seem to work.
> 
> My branch use libudev to probe media/video devices and needs to be configured with:
> --enable-v4l2-request --enable-libudev --enable-libdrm
> 
> [1] https://github.com/Kwiboo/FFmpeg/commits/v4l2-request-hwaccel-4.0.4-hantro

I hadn't realized that this is a backwards incompatible change. With
your branch rebased onto n4.2, and this patch applied, decoding seems to
work.

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
