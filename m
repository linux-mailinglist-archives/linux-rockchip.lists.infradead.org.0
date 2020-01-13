Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA1F13924C
	for <lists+linux-rockchip@lfdr.de>; Mon, 13 Jan 2020 14:38:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P+cygcoN26GXxwPxzLCE0ZGIcjoRW06IQrbkS3Ec8eo=; b=Ia8MZMFbI/eqyg
	kZCpmrMwYZyI3jI8CwKCIIAibwM5CiAuPeVhmplCtU1w0wUpxeeNDlJgW9ssvDdYudjJ+yn5cpObZ
	4V9gduvpGxRGThid0A1RLg+QIPrbw4BnbKRQ8elSxsmsc1JBubI69zSMSm2Dpl06DsIvU5tb6NSRk
	rKqIhDe7FZHYYWeWPT6oLw898jmXk7YozFlH8zi9sRwWfQCk4ltIp4Hmwesxlw57k21QK6YyVSVu+
	d9moyxfQJVASt/qQ7S/rKNHvEe6SzycC+ol1+uUdk3Z/pGI0QKiz+uVERBXFSTR3dRORtwutMuDY4
	ofsVZ0bD9W9PsQXyuphA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqzv9-0002bO-HK; Mon, 13 Jan 2020 13:38:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqzv0-0002TI-1R; Mon, 13 Jan 2020 13:38:11 +0000
Received: from wf0253.dip.tu-dresden.de ([141.76.180.253] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1iqzuw-00038L-BX; Mon, 13 Jan 2020 14:38:06 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Wambui Karuga <wambui.karugax@gmail.com>
Subject: Re: [PATCH] drm/rockchip: use DIV_ROUND_UP macro for calculations.
Date: Mon, 13 Jan 2020 14:38:05 +0100
Message-ID: <789581379.5MvcqtHuSF@phil>
In-Reply-To: <20200109142057.10744-1-wambui.karugax@gmail.com>
References: <20200109142057.10744-1-wambui.karugax@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_053810_232345_C30F5CF4 
X-CRM114-Status: UNSURE (   8.29  )
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
Cc: airlied@linux.ie, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 9. Januar 2020, 15:20:57 CET schrieb Wambui Karuga:
> Replace the open coded calculation with the more concise and readable
> DIV_ROUND_UP macro.
> 
> Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>

applied to drm-misc-next

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
