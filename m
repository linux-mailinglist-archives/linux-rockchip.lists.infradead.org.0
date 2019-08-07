Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D548562E
	for <lists+linux-rockchip@lfdr.de>; Thu,  8 Aug 2019 00:48:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1xJvWTi/yIkiRdQXFBuB6mvz82QcWSiSWFFgiCcLLFw=; b=dMpWqtnWW6lzsM
	CKLfTS0hiSMiPpdaZcLqFGPV7x5HXHb2gph+Y4jhsWMuqr54Gtr652WQsxKmhwDXbNKg/+RaqFvF4
	CF1zYEvRflqAhARDYYkMBY6NeUa6lX7z36zfsFKnHY3u3fZsDqmC7q0VFoXoc15U/xFCTXCeIJfPk
	X035+Z6LgoyUYEncJSn20/Sgtl8q9d3PLjn2WOEGhdEg3IIL8h1Wi1KN8R++JbZ/3nt76MDWy5QnJ
	Gj/BT5gPbMFHPe49lDKlPPEuF+z/rzDcN1e0ntaT+Muzn66Ja4U62HIP5IFlXTV/7nA2WA0Um2J4p
	+sN3h1g0iIBEhUL5sV5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvUjI-0003cf-Iz; Wed, 07 Aug 2019 22:48:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvUjF-0003cG-Fg
 for linux-rockchip@lists.infradead.org; Wed, 07 Aug 2019 22:48:22 +0000
Received: from ip5f5a6044.dynamic.kabel-deutschland.de ([95.90.96.68]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hvUj8-0003su-OM; Thu, 08 Aug 2019 00:48:14 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: John Keeping <john@metanate.com>
Subject: Re: [PATCH] drm/rockchip: fix VOP_WIN_GET macro
Date: Thu, 08 Aug 2019 00:48:14 +0200
Message-ID: <2679769.bco7YeSQm7@diego>
In-Reply-To: <20190703095111.29117-1-john@metanate.com>
References: <20190703095111.29117-1-john@metanate.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_154821_673635_ECC8F1AD 
X-CRM114-Status: UNSURE (   9.63  )
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
Cc: linux-rockchip@lists.infradead.org, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 3. Juli 2019, 11:51:11 CEST schrieb John Keeping:
> Commit 9a61c54b9bff ("drm/rockchip: vop: group vop registers") seems to
> have unintentionally changed the defintion of this macro.  Since it is
> unused, this was not spotted but any attempt to use it results in
> compilation errors.
> 
> Revert to the previous definition.
> 
> Fixes: 9a61c54b9bff ("drm/rockchip: vop: group vop registers")
> Signed-off-by: John Keeping <john@metanate.com>

applied to drm-misc-next

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
