Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78289D74C5
	for <lists+linux-rockchip@lfdr.de>; Tue, 15 Oct 2019 13:18:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X28NO/JhKkaHnlW4TQ0DGYs0nCOq2Tsbt5Jci+r6Glk=; b=umTqBMY1quVpCE
	GrC+C5AUQFgvnqXwzux5x5HboT0cxsKqUj3qe63jnuLG0XcgwYtOJZ94nAkDxVcicPmYlKtheP/lq
	HxeECmoFNooJ8MPiZAzxAuMrUYM5+8ylCDFs+YGIGPeHCFHOxIkeP8twadrmrFI7gJZ1ldhsP2sFM
	Pr9K0T52V6w/qSLrgWotAkBLlZOivm8eva1rb8QRFOn3AL4euUy/vG6iJgcCFuX4JP2bdYAjx439E
	8mgFeioCrm/9zQCUiMMfenG3lHCfYEHZnMg9vYPyGVWlR8PAzL6kK5pbBj0jfVfNvS3mCLZGIiAtk
	s1GjK3QEzbDpD7TlQJYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKKql-0005cn-Nc; Tue, 15 Oct 2019 11:18:47 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKKok-0003tm-97
 for linux-rockchip@lists.infradead.org; Tue, 15 Oct 2019 11:16:44 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 4E61B2D9; Tue, 15 Oct 2019 13:16:40 +0200 (CEST)
Date: Tue, 15 Oct 2019 13:16:38 +0200
From: Joerg Roedel <joro@8bytes.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH] iommu: rockchip: Free domain on .domain_free
Message-ID: <20191015111638.GH14518@8bytes.org>
References: <20191002172923.22430-1-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002172923.22430-1-ezequiel@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_041642_552925_FBD610D4 
X-CRM114-Status: UNSURE (   7.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-rockchip@lists.infradead.org, iommu@lists.linux-foundation.org,
 kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 02:29:23PM -0300, Ezequiel Garcia wrote:
> IOMMU domain resource life is well-defined, managed
> by .domain_alloc and .domain_free.
> 
> Therefore, domain-specific resources shouldn't be tied to
> the device life, but instead to its domain.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>

Looks good to me, if Heiko Acks it I apply it for v5.5.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
