Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5699D75938
	for <lists+linux-rockchip@lfdr.de>; Thu, 25 Jul 2019 22:57:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NmHGMsAmXn/0CfWmMcju1fDnMpIJk55+oOP1JgfcDvw=; b=n6SdzhTjdY4o4S
	Mc5u2AdjLsfey0blY8gOEx8PMbGjdpjt4irA963uxBgXHYxlM8VVQBRYlJ9/VsRQAL3k7atY1r1IW
	+0L7yy6+uwhxzRvEpBrHJH3WzEkM5Da8ulTxUMG6I49QZsGr5QhzbXy2gcpFegr/DSN9u780nAMuW
	RpOIbKI/pjfLnXWQZFi8H+ttdEwpJx7dUk5BPGtf24hCSL9igWvnhdsMQOMyMGLkrK09tZdbULv59
	nG9BRCaUJYiwDdxKiXuas6y+2dVmzifYrkW3GZhttSUHgSCIKIItaLArImg+gTY9Zsl7YUhK5S9Tv
	kvNIh52mgd12egTfRRaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqkoE-0006nx-Az; Thu, 25 Jul 2019 20:57:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqkny-0006dT-D0; Thu, 25 Jul 2019 20:57:39 +0000
Received: from d57e23da.static.ziggozakelijk.nl ([213.126.35.218]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hqknv-00022Z-8K; Thu, 25 Jul 2019 22:57:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v3 5/5] ARM: dts: rockchip: add veyron-tiger board
Date: Thu, 25 Jul 2019 22:57:34 +0200
Message-ID: <2510720.JxzBTN3nyj@phil>
In-Reply-To: <20190725162642.250709-6-mka@chromium.org>
References: <20190725162642.250709-1-mka@chromium.org>
 <20190725162642.250709-6-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_135738_586980_34002BFB 
X-CRM114-Status: UNSURE (   9.81  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 25. Juli 2019, 18:26:42 CEST schrieb Matthias Kaehlcke:
> Also known as the AOpen Chromebase Mini.
> 
> tiger and fievel are share the same board, tiger has a display and
> touchscreen, fievel not. Use the fievel .dts as base and add the
> extra bits.
> 
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>

applied for 5.4

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
