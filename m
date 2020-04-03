Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0A619D715
	for <lists+linux-rockchip@lfdr.de>; Fri,  3 Apr 2020 15:01:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mayKMcNW29JEFYg5PlNBj1uqRSYh8wHt0CF9zsyDjlI=; b=r+70DWRadYLDW5
	16kAPY38g5sylgulQ3EvWFqG6xBnIizOu7l6ngLmkc/wuVbbjgj+C42feKDx2PeHO0PvpdmOIHlq4
	mYeEnaTwoDaLdRccYi11zIUkCCJPc+BihPY8ZOE0fiArsZVn8aKU7TQJbPaYHBvPReh9UdCJETdMI
	/xSQnWZaBEhDYV8lgqp5bb1/vK40FPgJW8iiekDlXF7fpbJv8AWzG2+N0z/lblvZC9oK9MAo1ivqo
	fog7GPiUZTju4oyiudtjZEuZzSUQt3JiDNBF27zwki0dfirxiHLefh8ctGjUsL3R12gs7smhakRa1
	p5xNUDQ9MT/+GSh6AMFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKLwR-00062w-UC; Fri, 03 Apr 2020 13:00:59 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKLwP-00062V-7p
 for linux-rockchip@lists.infradead.org; Fri, 03 Apr 2020 13:00:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id D2862297F04
Subject: Re: [PATCH 1/4] dt-bindings: phy: phy-rockchip-dphy-rx0: move
 rockchip dphy rx0 bindings out of staging
To: Ezequiel Garcia <ezequiel@collabora.com>, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Kishon Vijay Abraham I <kishon@ti.com>
References: <20200402000234.226466-1-helen.koike@collabora.com>
 <20200402000234.226466-2-helen.koike@collabora.com>
 <a86bfa69fef8eee428d7c89b1d4fe99728af2ab7.camel@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <be7f32a3-bd22-5a8e-6c2f-835bcb693d46@collabora.com>
Date: Fri, 3 Apr 2020 10:00:43 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <a86bfa69fef8eee428d7c89b1d4fe99728af2ab7.camel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_060057_410606_0FBAA460 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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



On 4/2/20 1:17 PM, Ezequiel Garcia wrote:
> (+Kishon)
> 
> Hi Helen,
> 
> I was wondering if we couldn't also move the phy driver out of staging.

I think we can, let's move it.

Regards,
Helen

> 
> Thanks,
> Ezequiel
>  
> On Wed, 2020-04-01 at 21:02 -0300, Helen Koike wrote:
>> Move phy-rockchip-dphy-rx0 bindings to Documentation/devicetree/bindings/phy
>>
>> Signed-off-by: Helen Koike <helen.koike@collabora.com>
>> ---
>>  .../devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml           | 0
>>  1 file changed, 0 insertions(+), 0 deletions(-)
>>  rename {drivers/staging/media/phy-rockchip-dphy-rx0/Documentation => Documentation}/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml (100%)
>>
>> diff --git a/drivers/staging/media/phy-rockchip-dphy-rx0/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
>> b/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
>> similarity index 100%
>> rename from drivers/staging/media/phy-rockchip-dphy-rx0/Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
>> rename to Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
> 
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
