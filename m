Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E16EB0C4
	for <lists+linux-rockchip@lfdr.de>; Thu, 31 Oct 2019 14:03:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j34NhYSCvG70cCFFIInBySGV7FhLPdrwZ88Ux05cu1A=; b=KJHEp0E6pUh4wp
	BN/2403MP/R6VitZFg7eejcFfsO8QuUuwPiH5sxeReD1n2EBMnqIx1k9rvKSV3joov4btwlIpF2JW
	VPe6OlMFyUxINJR/KMlEiA+cdB91qeXgghgxlk42uV7oSj9RdGloIByqmhIKFrKcQJGIpL+E17+Vk
	MrjrFDZR0rzhJjTIhcRz9UVUruTJVKaB+EyjU5apzGMHtwD7Rp+eWQrHum3xzuNSsBaXbo0TaZUNA
	XAHhd3ZT4lSs+hlrMZ1X+BWUNE3TcLLF8dsGWV6FP70+AckaFvk2Hn2Wf3mEGadAgFVX3ozOIpueV
	XrpHec2CFlRDrL5K8oRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQA6b-0003vU-7b; Thu, 31 Oct 2019 13:03:13 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQA6X-0003nX-43
 for linux-rockchip@lists.infradead.org; Thu, 31 Oct 2019 13:03:10 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9VD31nq124895;
 Thu, 31 Oct 2019 08:03:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1572526981;
 bh=jpBAUypS3kMb2gSVD1QCfzFnqXx0fy8eb1N5e+Nc4iA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=a0LsMdptZsrjHDm1mZ0BzdowBnneVMP6qD29KVAZrqbc+8mdtxb0BhGo8E8Bjys2S
 zc7G+aoD4Ri6Hf7EBW7CcG3cQz62c9jN4uXqqVip5hJA3saxTs5/zk7vtD4+ZJNFAA
 fvA9es4/97k69F7m43YRxQxXwikkj7kS8K578jtU=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9VD30QB048254
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 31 Oct 2019 08:03:00 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 31
 Oct 2019 08:02:47 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 31 Oct 2019 08:02:47 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9VD2vCC063280;
 Thu, 31 Oct 2019 08:02:58 -0500
Subject: Re: [PATCH] phy: phy-rockchip-inno-usb2: add phy description for px30
To: Heiko Stuebner <heiko@sntech.de>
References: <20190917082532.25479-1-heiko@sntech.de> <1974613.gpRaQal8Ma@phil>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <1b31d4fe-fd78-700a-6e53-298bd85d7a27@ti.com>
Date: Thu, 31 Oct 2019 18:32:22 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1974613.gpRaQal8Ma@phil>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_060309_264633_C0359D2D 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 31/10/19 5:38 PM, Heiko Stuebner wrote:
> Hi Kishon,
> 
> Am Dienstag, 17. September 2019, 10:25:32 CET schrieb Heiko Stuebner:
>> The px30 soc from Rockchip shares the same register description as
>> the rk3328, so can re-use its definitions.
>>
>> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> 
> could you pick this up as well please?

merged now, thanks.

-Kishon
> 
> Thanks
> Heiko
> 
>> ---
>>  Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt | 1 +
>>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c                    | 1 +
>>  2 files changed, 2 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
>> index 00639baae74a..541f5298827c 100644
>> --- a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
>> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
>> @@ -2,6 +2,7 @@ ROCKCHIP USB2.0 PHY WITH INNO IP BLOCK
>>  
>>  Required properties (phy (parent) node):
>>   - compatible : should be one of the listed compatibles:
>> +	* "rockchip,px30-usb2phy"
>>  	* "rockchip,rk3228-usb2phy"
>>  	* "rockchip,rk3328-usb2phy"
>>  	* "rockchip,rk3366-usb2phy"
>> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
>> index eae865ff312c..680cc0c8825c 100644
>> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
>> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
>> @@ -1423,6 +1423,7 @@ static const struct rockchip_usb2phy_cfg rv1108_phy_cfgs[] = {
>>  };
>>  
>>  static const struct of_device_id rockchip_usb2phy_dt_match[] = {
>> +	{ .compatible = "rockchip,px30-usb2phy", .data = &rk3328_phy_cfgs },
>>  	{ .compatible = "rockchip,rk3228-usb2phy", .data = &rk3228_phy_cfgs },
>>  	{ .compatible = "rockchip,rk3328-usb2phy", .data = &rk3328_phy_cfgs },
>>  	{ .compatible = "rockchip,rk3366-usb2phy", .data = &rk3366_phy_cfgs },
>>
> 
> 
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
