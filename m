Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED0DF19CAC9
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 22:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c/zrT6zGc010qBq3u1EQBVzrlOwrwmqDS1ltMWUzbdg=; b=H7B7/wP3/7b+9r
	t1iPEP5t70HSB3D//XlSCVZA5N6Hccbr7sKUGvMFRRVT8ioeRJyRXI55qrC3Tv3CIUvI7iTMvfxvU
	cUkh2+C8QPdC3ul1wuGiDkA3zpYZRt7sBRZfLdERRyOUXka6EmHwhGDFoYxVtymW1ZR5e29VgzTDW
	2e6kxW3YTq8ZlLU86YsRXTk2neXP3hVfYqeaZdF+PIlfVDNVWmzZBrIKdY3rnuqOkvO1ZDSdWzl4X
	6sPB1YwtJM39K1WS4iw61Zat4rHlkSp6zF1u+fc6cdKrOdBSdGDSKv94uQjpuhYJT03mFSE3remVy
	zaq/obdATjK0wZslNi2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK6AX-0003oS-5b; Thu, 02 Apr 2020 20:10:29 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK6AU-0003ny-CR
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 20:10:28 +0000
Received: by mail-wm1-x343.google.com with SMTP id f6so5113629wmj.3
 for <linux-rockchip@lists.infradead.org>; Thu, 02 Apr 2020 13:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=5UitrtcQcLyUuypDd55yvaCM6NIpqOgNi0sTpbymWqI=;
 b=jLUnozkZzk4wHj1zfjABKiOeRlA+KmFZy7xnaV7k84+hygjsJgnWCGl9rdGgKYZBLD
 EcCtl/2F/L+6SK6Nkmj7cSBZpmfEVcfaE/qebmIW6CTRo2jxjsafOZlyF0jYEup9bFUi
 KGbP6hKKwQjR8wryIky2THe219oIq9qoE2XBaUV/36TfgDLK5yNsRDQgzifAv3x+0ide
 +dXZS9T6AvOWhnXvKDqTZUIA3tBWJH6ohCIqHEGb5gqscpHUgOoqqI2D1xRjMnZ8VFkn
 kwdj5LogxrcQpwPdW6Q4ABa1wP7PSaceNqWWFLzdpN2R7BSMNvMX0ui6JP1NzEy59lPA
 WSgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5UitrtcQcLyUuypDd55yvaCM6NIpqOgNi0sTpbymWqI=;
 b=IidBjamogplNWttA8ShMe+IoiUSMAgrLfjWjRZd9pKPy6vdgKCOwSiRG9pKoigO8SS
 pkzhne2i/rmhqdR4Zk3Pt2V8M2LtfbHEgad6TXc45kzHORVmDbXFh75InhH6wTbMoKZ0
 IWu4xnGfPijGcTySm7xbp3nkqgo0aCr0MyxBzDdh7+QDA/XAZTOKO9a+8JqHUBcUVlZQ
 LXuOaS889tFWX2sX/R21O/CjdT5dIQ++2LEb6Hnf2YFuWyUfXHf+nFZWrnVGFM1Eg9XC
 RwLE7B8ydmi1odDzHqUywKVUSUiVh5EaEQYlVJRvanBPkMo++LsiEh/ALorg3JBwhi72
 4zHQ==
X-Gm-Message-State: AGi0PuZn8ASX9voIrxc2OEaLvaj8yB4//L/4ADmL+BcvJmmMew3HXZQX
 6mBwQH7mZMyDSrF8i9rdEbo=
X-Google-Smtp-Source: APiQypIbEEkJukJIMkBcjNC0Z/IpCLXYe/ZM6jvYBjXgKEX9jEuufWBxIiPSsGTTRPDqcUTlIC+mKg==
X-Received: by 2002:a1c:c257:: with SMTP id s84mr5274398wmf.9.1585858224173;
 Thu, 02 Apr 2020 13:10:24 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id r5sm8462481wmr.15.2020.04.02.13.10.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 13:10:23 -0700 (PDT)
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: add isp0 node for rk3399
To: Helen Koike <helen.koike@collabora.com>
References: <20200402000234.226466-5-helen.koike@collabora.com>
 <1187d28a-6fb9-fd12-a422-8a4220a11e79@gmail.com>
 <d8b05dd4-1ece-9513-b2ec-0cb58f665c5e@collabora.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <20ae21a6-74b0-ff99-80d9-1a0ce2cc1aa5@gmail.com>
Date: Thu, 2 Apr 2020 22:10:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <d8b05dd4-1ece-9513-b2ec-0cb58f665c5e@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_131026_422887_AD053B9E 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, karthik.poduval@gmail.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, hverkuil-cisco@xs4all.nl, mark.rutland@arm.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 4/2/20 9:46 PM, Helen Koike wrote:
> 
> 
> On 4/2/20 2:20 PM, Johan Jonker wrote:
>> Hi Helen,
>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> index fc0295d2a65a1..815099a0cd0dd 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> @@ -1718,6 +1718,33 @@ vopb_mmu: iommu@ff903f00 {
>>>  		status = "disabled";
>>>  	};
>>>  
>>> +	isp0: isp0@ff910000 {
>>> +		compatible = "rockchip,rk3399-cif-isp";
>>> +		reg = <0x0 0xff910000 0x0 0x4000>;
>>> +		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
>>> +		clocks = <&cru SCLK_ISP0>,
>>> +			 <&cru ACLK_ISP0>, <&cru ACLK_ISP0_WRAPPER>,
>>> +			 <&cru HCLK_ISP0>, <&cru HCLK_ISP0_WRAPPER>;
>>> +		clock-names = "clk_isp",
>>> +			      "aclk_isp", "aclk_isp_wrap",
>>> +			      "hclk_isp", "hclk_isp_wrap";
>>
>>> +		power-domains = <&power RK3399_PD_ISP0>;
>>> +		iommus = <&isp0_mmu>;
>>> +		phys = <&mipi_dphy_rx0>;
>>> +		phy-names = "dphy";
>>
>> Maybe a little sort? But keep rest as it is. Also in example.
>>
>> 		iommus = <&isp0_mmu>;
>> 		phys = <&mipi_dphy_rx0>;
>> 		phy-names = "dphy";
>> 		power-domains = <&power RK3399_PD_ISP0>;
> 
> Are you proposing only to move power-domains after phy? And keep the rest?
> What is the main logic?

There is no hard rule... It mostly depend on Heiko...

For nodes:
Sort things without reg alphabetical first,
then sort the rest by reg address.

Inside nodes:
If exists on top: compatible, reg and interrupts.
In alphabetical order the required properties.
Then in alphabetical order the other properties.
And as last things that start with '#' in alphabetical order.

> 
> Thanks
> Helen
> 
>>
>>> +
>>> +		ports {
>>> +			#address-cells = <1>;
>>> +			#size-cells = <0>;
>>> +
>>> +			port@0 {
>>
>>> +				#address-cells = <1>;
>>> +				#size-cells = <0>;
>>> +				reg = <0>;
>>
>> Move reg above #address-cells. Change that in example as well.
>>
>> 				reg = <0>;
>> 				#address-cells = <1>;
>> 				#size-cells = <0>;
>>
>>> +			};
>>> +		};
>>> +	};
>>> +
>>>  	isp0_mmu: iommu@ff914000 {
>>>  		compatible = "rockchip,iommu";
>>>  		reg = <0x0 0xff914000 0x0 0x100>, <0x0 0xff915000 0x0 0x100>;
>>> -- 
>>> 2.26.0
>>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
