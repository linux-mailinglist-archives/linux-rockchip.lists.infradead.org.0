Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FF0122718
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Dec 2019 09:53:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ppUEwgzyCrfn5SiJ1vKLE67a8lSw2Sq4oq+1ULb9pQ8=; b=Fe5YJOSJulB4AdC1CKGZ3LbE2
	lw0RH5xV233FDNx4zJ1xX3MmGf2m6wAQUfWtwfaEBLiSBvWuJPPEoPds9WLF0tV0bViy8sMa/QnHJ
	yd30FGquVF41tJV8Va6PpwzF8IP2/rVEFhb64E4+d+e0J1e7VA4w/sqzLkxarbNgs99Wf3qYALxW2
	AkmBvTlKp4w2dIJ3jqwPzRuPZClmYQMPJdMOK6rQTrJWj4DogQ1fk8XOc/73l+KTqXuaQj58cb1Uw
	tjcQZyUcUEECjyY7wrLLzS8GJmFeHFOwuE/QDpOuomYySu9wFcpGJ7lgJOw8R9xHO2rOKBGB411Cy
	P/b+SnP1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih8bd-0004lh-0V; Tue, 17 Dec 2019 08:53:25 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih8bZ-0004kz-Tk
 for linux-rockchip@lists.infradead.org; Tue, 17 Dec 2019 08:53:23 +0000
Received: from fsav403.sakura.ne.jp (fsav403.sakura.ne.jp [133.242.250.102])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id xBH8rDNq089476;
 Tue, 17 Dec 2019 17:53:13 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav403.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav403.sakura.ne.jp);
 Tue, 17 Dec 2019 17:53:13 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav403.sakura.ne.jp)
Received: from [192.168.1.2] (121.252.232.153.ap.dti.ne.jp [153.232.252.121])
 (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id xBH8rDMm089472
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NO);
 Tue, 17 Dec 2019 17:53:13 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Subject: Re: [PATCH v3] arm64: dts: rockchip: split rk3399-rockpro64 for v2
 and v2.1 boards
To: Heiko Stuebner <heiko@sntech.de>
References: <20191202055929.26540-1-katsuhiro@katsuster.net>
 <6656576.A7zHEAv81k@phil>
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Message-ID: <c7a6427d-9a11-a83e-82dd-d799fc0f72ce@katsuster.net>
Date: Tue, 17 Dec 2019 17:53:13 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <6656576.A7zHEAv81k@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_005322_179538_772FDEE5 
X-CRM114-Status: GOOD (  17.78  )
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
Cc: Vasily Khoruzhick <anarsoul@gmail.com>, linux-rockchip@lists.infradead.org,
 Hugh Cole-Baker <sigmaris@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hello Heiko,

On 2019/12/16 19:04, Heiko Stuebner wrote:
> Hi Katsuhiro,
> 
> Am Montag, 2. Dezember 2019, 06:59:29 CET schrieb Katsuhiro Suzuki:
>> This patch splits rk3399-rockpro64 dts file to 2 files for v2 and
>> v2.1 boards.
>>
>> Both v2 and v2.1 boards can use almost same settings but we find a
>> difference in I2C address of audio CODEC ES8136.
>>
>> Reported-by: Vasily Khoruzhick <anarsoul@gmail.com>
>> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
>>
>> ---
>>
>> Changes in v3:
>>    - Add compatible strings for v2.0 and v2.1 boards
>>
>> Changes in v2:
>>    - Use rk3399-rockpro64.dts for for v2.1 instead of creating
>>      rk3399-rockpro64-v2.1.dts
>> ---
>>   .../devicetree/bindings/arm/rockchip.yaml     |   2 +
>>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>>   .../boot/dts/rockchip/rk3399-rockpro64-v2.dts |  30 +
>>   .../boot/dts/rockchip/rk3399-rockpro64.dts    | 759 +----------------
>>   .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 763 ++++++++++++++++++
>>   5 files changed, 800 insertions(+), 755 deletions(-)
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>>
>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> index d9847b306b83..8d8658613c57 100644
>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> @@ -409,6 +409,8 @@ properties:
>>   
>>         - description: Pine64 RockPro64
>>           items:
>> +          - const: pine64,rockpro64-v2.1
>> +          - const: pine64,rockpro64-v2.0
>>             - const: pine64,rockpro64
>>             - const: rockchip,rk3399
>>   
> 
> applied for 5.6 with a changed binding. If you need a
> "one-of-many" element it should use an enum ... see the rk3399-firefly
> and other boards for example. So I've adapted the patch accordingly:
> 

Thank you for pointing and fix.
I will do as that for next time.


> @@ -409,6 +409,9 @@ properties:
>   
>         - description: Pine64 RockPro64
>           items:
> +          - enum:
> +              - pine64,rockpro64-v2.1
> +              - pine64,rockpro64-v2.0
>             - const: pine64,rockpro64
>             - const: rockchip,rk3399
>   
> 
> Heiko
> 
> 
> 

Best Regards,
Katsuhiro Suzuki


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
