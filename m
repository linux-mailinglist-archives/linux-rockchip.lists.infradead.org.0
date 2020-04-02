Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FEF419C6E7
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 18:17:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=btdp0mzwsZSVrjRAYiJ97pM8PiHca4yFJe4CFk3FEqg=; b=t6kgKTK3xVMVPb
	QJB0exm1stxAmeJhxruu2F2jxeaj3UGmUNQ/CDOeUVEjZ9Xgp3QfZRZHXWzPF+A4By7W8WfFyGwhs
	ClXU03pT0ZNnLNs1ByXqaaMGYCd83PpMwWyEGTFOafyGuKvaJ/14Nm4dBA0aG41sD6vbLxXjBE+Lb
	dZ31cVUFhVLuu/kUqxJX0+WwFnJTzgfcLCdW9ih4F8RgrC5hsHXy1WSJGDd8LBYMacUqqN9db7RwQ
	RbtpfPiHs6EB0kiaEzdHCs8FVxc+F+rqVbwgeDXDtHmtRk+OtocbVK5ED8OAfXZcoFBeKXlzTUkbF
	7hr8hyebHO9vauxjG0HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK2XJ-0002NC-1w; Thu, 02 Apr 2020 16:17:45 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK2XF-0002LS-52
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 16:17:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 1C581297DC9
Message-ID: <a86bfa69fef8eee428d7c89b1d4fe99728af2ab7.camel@collabora.com>
Subject: Re: [PATCH 1/4] dt-bindings: phy: phy-rockchip-dphy-rx0: move
 rockchip dphy rx0 bindings out of staging
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Helen Koike <helen.koike@collabora.com>, devicetree@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, Kishon
 Vijay Abraham I <kishon@ti.com>
Date: Thu, 02 Apr 2020 13:17:27 -0300
In-Reply-To: <20200402000234.226466-2-helen.koike@collabora.com>
References: <20200402000234.226466-1-helen.koike@collabora.com>
 <20200402000234.226466-2-helen.koike@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_091741_325143_E1AE7C41 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, linux-kernel@vger.kernel.org,
 karthik.poduval@gmail.com, robh+dt@kernel.org, hverkuil-cisco@xs4all.nl,
 kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

(+Kishon)

Hi Helen,

I was wondering if we couldn't also move the phy driver out of staging.

Thanks,
Ezequiel
 
On Wed, 2020-04-01 at 21:02 -0300, Helen Koike wrote:
> Move phy-rockchip-dphy-rx0 bindings to Documentation/devicetree/bindings/phy
> 
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> ---
>  .../devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml           | 0
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  rename {drivers/staging/media/phy-rockchip-dphy-rx0/Documentation => Documentation}/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml (100%)
> 
> diff --git a/drivers/staging/media/phy-rockchip-dphy-rx0/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
> b/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
> similarity index 100%
> rename from drivers/staging/media/phy-rockchip-dphy-rx0/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
> rename to Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
