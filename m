Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CC7A809F
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Sep 2019 12:50:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SbnCPA0o1eeCd3/eYs17A8JDvhsON5o8YmKWul04Qj8=; b=JXKrXTvT8Pin9K
	9O/mRXs8GPAeojnHXhruVXzhiIEbn1n7OZm22CuF1nDBxy+J5/RG0sB+NrZjz+yiPccGFVN3PQeeo
	B9vrY4kp6MLsrhA/CkrRsLeJL+NEdCwmJBZNaeo9dIBjNjKp3WQwBrc/XxDGr6BoOMPnJthsp4eun
	Fg70SXjS9mJRGlo/uIi6N8MA1NzW2MwR/GWD/hkFUcCa3WE4QWs312oylsJSVuuXIBi28SQwRjJnQ
	aNYDFQ7SpvINewnqjgdErlmI65qdinjT7/c2jMXvvfu+/dKmUNNOae9FE3h41SBmtDtGOBN3cJJ+y
	LlNGitPLQf70FGY2hGaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5SsJ-0005ZT-DP; Wed, 04 Sep 2019 10:50:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5SsG-0005Xt-NR
 for linux-rockchip@lists.infradead.org; Wed, 04 Sep 2019 10:50:53 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1i5SsE-0005SZ-Du; Wed, 04 Sep 2019 12:50:50 +0200
Message-ID: <1567594250.3041.8.camel@pengutronix.de>
Subject: Re: [PATCH 2/4] media: hantro: Simplify buffer helpers
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Date: Wed, 04 Sep 2019 12:50:50 +0200
In-Reply-To: <20190903181711.7559-3-ezequiel@collabora.com>
References: <20190903181711.7559-1-ezequiel@collabora.com>
 <20190903181711.7559-3-ezequiel@collabora.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_035052_762964_A39A2205 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, 2019-09-03 at 15:17 -0300, Ezequiel Garcia wrote:
> Modify hantro_get_ref() and hantro_h264_get_ref_buf() helpers
> to return the buffer DMA address, this makes the code simpler
> and at the same time will allow easier enablement of the
> post-processing feature.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
