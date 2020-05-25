Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03ACD1E0E85
	for <lists+linux-rockchip@lfdr.de>; Mon, 25 May 2020 14:35:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q377iUWuvgA5T7eMlfAqnecxTBJ4G4FO1i9mHwluMJQ=; b=FG8OFNQlGq1KRYVhOoY5b2Idv
	6qOelUashBYZt2U+iCjcAmusl7wW0N7JQCIkfISi4R8ooZ0VTGvI74ZrI7QVuvM2lAPfMBgUWV/aG
	gzZir9Wlo4OrSvy8uWm6eqAu5SebhJvm6CXC/bVYoHtTuEKDRciGKdJXWmoWoEOh3XIr5G7EqwuNJ
	UW1GyW9gOr2RCHI5zjeFE0VeRuDXlMWEJDlAFIAiIuyxiQXy1r38Dcb7Lw3gmd+1++SXry/a/LkS2
	7Q+L3ClRBFyhnXCjnPgHgNKnsJgPtUfnt8vh1yQ16eXWfkhBskJCVk46vqIJ82h0WJGGFDUECiOib
	V94qiCYBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdCKR-0006YR-8m; Mon, 25 May 2020 12:35:39 +0000
Received: from mail.loongson.cn ([114.242.206.163] helo=loongson.cn)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdCKN-0006Xf-PN
 for linux-rockchip@lists.infradead.org; Mon, 25 May 2020 12:35:37 +0000
Received: from [10.130.0.52] (unknown [113.200.148.30])
 by mail.loongson.cn (Coremail) with SMTP id AQAAf9Dx32qFu8teZuk4AA--.634S3;
 Mon, 25 May 2020 20:35:18 +0800 (CST)
Subject: Re: [PATCH 2/2] phy: Remove CONFIG_ARCH_ROCKCHIP check for subdir
 rockchip
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <1590379739-18729-1-git-send-email-yangtiezhu@loongson.cn>
 <1590379739-18729-2-git-send-email-yangtiezhu@loongson.cn>
 <2687194.6AVWON70EC@diego>
From: Tiezhu Yang <yangtiezhu@loongson.cn>
Message-ID: <bf02bc5c-84e8-d699-e0fe-8bcf1bbd1030@loongson.cn>
Date: Mon, 25 May 2020 20:35:17 +0800
User-Agent: Mozilla/5.0 (X11; Linux mips64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <2687194.6AVWON70EC@diego>
X-CM-TRANSID: AQAAf9Dx32qFu8teZuk4AA--.634S3
X-Coremail-Antispam: 1UD129KBjvJXoW7Cr4fGF1UuF4xtrW3Xr1DZFb_yoW8WryDpw
 s5trWUCF95XF4jkFy2va98uFZ5tws3trWvgrW3X3W5XF98GrW3W3ZIgrWUXF4xXr4UArWx
 K3Z3Ga43uF15Ca7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDU0xBIdaVrnRJUUUkK14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
 rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
 1l84ACjcxK6xIIjxv20xvE14v26r4j6ryUM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j
 6F4UM28EF7xvwVC2z280aVAFwI0_Cr1j6rxdM28EF7xvwVC2z280aVCY1x0267AKxVW0oV
 Cq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0
 I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Cr0_Gr1UMcvjeVCFs4IE7xkEbVWUJV
 W8JwACjcxG0xvEwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lc7I2V7IY0VAS07AlzVAY
 IcxG8wCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14
 v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_JF0_Jw1lIxkG
 c2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI
 0_Jr0_Gr1lIxAIcVCF04k26cxKx2IYs7xG6rW3Jr0E3s1lIxAIcVC2z280aVAFwI0_Gr0_
 Cr1lIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7VU1fgA7
 UUUUU==
X-CM-SenderInfo: p1dqw3xlh2x3gn0dqz5rrqw2lrqou0/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_053536_257630_98E0C4AD 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-rockchip@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Xuefeng Li <lixuefeng@loongson.cn>, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 05/25/2020 06:48 PM, Heiko St=FCbner wrote:
> Am Montag, 25. Mai 2020, 06:08:59 CEST schrieb Tiezhu Yang:
>> If CONFIG_ARCH_ROCKCHIP is not set but COMPILE_TEST is set, the file in
>> the subdir rockchip can not be built due to CONFIG_ARCH_ROCKCHIP check
>> in drivers/phy/Makefile.
>>
>> Since the related configs in drivers/phy/rockchip/Kconfig depend on
>> ARCH_ROCKCHIP, so remove CONFIG_ARCH_ROCKCHIP check for subdir rockchip
>> in drivers/phy/Makefile.
>>
>> Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
> wouldn't this make more sense to do for all subdirs?
>
> - allwinner: also has arch_sunxi || compile_test in its Kconfig
> - amlogic: same
> - mediatek: same
> - renesas: same
> - tega: same
>
> So I think the right way would be to drop all the obj-$(CONFIG_ARCH_...)
> options and group the separate directories into the generic subdir
> listing below them.

Hi Heiko,

Thanks for your suggestions. I will check it and then send v2.

Thanks,
Tiezhu Yang

>
> Heiko
>
>> ---
>>   drivers/phy/Makefile | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/phy/Makefile b/drivers/phy/Makefile
>> index 310c149..e5b4f58 100644
>> --- a/drivers/phy/Makefile
>> +++ b/drivers/phy/Makefile
>> @@ -12,7 +12,7 @@ obj-$(CONFIG_ARCH_SUNXI)		+=3D allwinner/
>>   obj-$(CONFIG_ARCH_MESON)		+=3D amlogic/
>>   obj-$(CONFIG_ARCH_MEDIATEK)		+=3D mediatek/
>>   obj-$(CONFIG_ARCH_RENESAS)		+=3D renesas/
>> -obj-$(CONFIG_ARCH_ROCKCHIP)		+=3D rockchip/
>> +obj-y					+=3D rockchip/
>>   obj-$(CONFIG_ARCH_TEGRA)		+=3D tegra/
>>   obj-y					+=3D broadcom/	\
>>   					   cadence/	\
>>
>
>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
