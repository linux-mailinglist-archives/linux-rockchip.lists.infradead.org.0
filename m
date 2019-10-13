Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89108D587A
	for <lists+linux-rockchip@lfdr.de>; Mon, 14 Oct 2019 00:03:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vmsgqwUn7qpuu890IWBxT6VWA9aDzx33WCyK/Wasjis=; b=qfwH7Fq6QXc45F
	dv/0LBB7gr3g164P9EuS53vfo27EhJaz0wNmL+Cjnw2m3eQe3fIr/XAspJqRrsOl+lDiDmuNTFCtv
	l8g5RiPGiAuwLMq0ItFQJwH8PBLE9u9dKKkXlJSXDcTpN14kJZFZgifXy6JoyhvETKMpxOL1Sfb2J
	ZMfVhSGG+7Rrr9R/oYb8EL8MscnEjAtifEm/tGq53ecMyXgu1gJ/9lkOxqhyl1HCfGgDMdqtlVRjj
	SwES4gIc5O2xtpSVzXtWt5nz6kR3CBfQMg7XjsJk4M1a4aQtlBIrIMSRqBPCL+jkFuyKKwJdhRVhg
	S5RSq9dbZzGs1cqKnBRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJlxn-0002Eh-8b; Sun, 13 Oct 2019 22:03:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJlxk-0002EN-F6
 for linux-rockchip@lists.infradead.org; Sun, 13 Oct 2019 22:03:41 +0000
Received: from i59f7e0c5.versanet.de ([89.247.224.197] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iJlxg-0004wp-SA; Mon, 14 Oct 2019 00:03:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Nickey Yang <nickey.yang@rock-chips.com>
Subject: Re: [PATCH 1/1] drm/rockchip: vop: add the definition of dclk_pol
Date: Mon, 14 Oct 2019 00:03:31 +0200
Message-ID: <1778208.Lq4l6xoKsQ@phil>
In-Reply-To: <20191010034452.20260-2-nickey.yang@rock-chips.com>
References: <20191010034452.20260-1-nickey.yang@rock-chips.com>
 <20191010034452.20260-2-nickey.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_150340_652478_A75283FF 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 seanpaul@chromium.org, laurent.pinchart@ideasonboard.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 10. Oktober 2019, 05:44:52 CEST schrieb Nickey Yang:
> Some VOP's (such as px30) dclk_pol bit is at the last.
> So it is necessary to distinguish dclk_pol and pin_pol.
> 
> Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>

applied to drm-misc-next with Sandy's Reviewed-by

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
