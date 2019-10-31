Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DC4EB40C
	for <lists+linux-rockchip@lfdr.de>; Thu, 31 Oct 2019 16:37:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D1yhfApPR7zdoa73CIwReskPaUSFoN2iaXnC5w/+5yk=; b=jrINjCHbrdansm
	XmHUzFKgIEJnwVrUixB+xLIcK89cdrIx3dxAjB+PMq19CpooJKswbcf4NL5mZDLP3qO+mPwijy0QP
	rXOxrh5ywobp3dH3XnPe3wfQxT/F5uV8BxoAUJzqPU52Iy9E80HLjiqjz2Uf7Zdb3zmzvfe7JxQFk
	BUJbR4kPWP3Lc5OufL3ctlfWwcVzKJ3sAceH79RJzSJNI+XgcGB8TYXPzP6lDgRVlUMtCtrYz+GT4
	U0MavuFsh7+n9A2oAa0fFVFj0ck6HsIR523ZfjhmOXORr8B/mkApjvMNaE/WS6riH6NtWMPqgrjRP
	TwXJ81W8ZVjBvUJMLOVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQCVR-0001aC-Fr; Thu, 31 Oct 2019 15:37:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQCVF-0001Qj-4u; Thu, 31 Oct 2019 15:36:50 +0000
Received: from dhcp-64-28.ens-lyon.fr ([140.77.64.28] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iQCV4-000698-Qw; Thu, 31 Oct 2019 16:36:38 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 1/2] dt-bindings: Add doc for Firefly ROC-RK3308-CC board
Date: Thu, 31 Oct 2019 16:36:37 +0100
Message-ID: <314513738.FDhnDVbnjr@phil>
In-Reply-To: <20191030072648.29738-1-andy.yan@rock-chips.com>
References: <20191030072648.29738-1-andy.yan@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_083649_341730_2B5B8CEA 
X-CRM114-Status: UNSURE (   8.80  )
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 30. Oktober 2019, 08:26:48 CET schrieb Andy Yan:
> Add compatible for Firefly ROC-RK3308-CC board.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

applied both patches for 5.5, with some small fixes.

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
