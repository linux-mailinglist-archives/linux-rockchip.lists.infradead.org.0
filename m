Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3021CE9FB
	for <lists+linux-rockchip@lfdr.de>; Tue, 12 May 2020 03:08:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jg2oG5/s7xxQqSOvkIi3vTePKHGpCHamtvEI+E91IUU=; b=mRvfwLdZSTWWYDnXSDxtzeGOB
	y35qdhPay2cHt/0QFbExauMPNRH8OBShKL8mhdqNISlA+9wVUoCMDsLDVqEPaF0nEOzJUC8RsIeke
	c91ApYOCGk2003Ck11sBCZ8XbLgZFf4HlrJInfF5U+3ICHZgRd8s0Wz9QuZKQCRwTh1XNU8GHRCv3
	mCsRMCIQFiLhKUg8uvccGJogvfi03y84H85wNn8GWjssF63ZpIGNHDmP7AXdXQGyQtvSJEgECIqC4
	lJOhzqGD5RXVVDAiBNCGcqFkgG6uMIgET892/8jLh/9sspJqWe2iwnHL36M9IOo1COqKjZA/n+U3n
	l6HeN67lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYJPQ-0001Ii-OA; Tue, 12 May 2020 01:08:36 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYJPL-0001Hu-Ku
 for linux-rockchip@lists.infradead.org; Tue, 12 May 2020 01:08:34 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id BA466433;
 Tue, 12 May 2020 09:08:22 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.33] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P27328T140438507874048S1589245700838387_; 
 Tue, 12 May 2020 09:08:21 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a34463da1c30f9498997fbeb6d71b2ec>
X-RL-SENDER: frank.wang@rock-chips.com
X-SENDER: wmc@rock-chips.com
X-LOGIN-NAME: frank.wang@rock-chips.com
X-FST-TO: wmc@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v4 12/16] usb: dwc3: add make compatible for rockchip
 platform
To: Marek Vasut <marex@denx.de>, heiko@sntech.de, bmeng.cn@gmail.com,
 philipp.tomsich@theobroma-systems.com, klaus.goger@theobroma-systems.com,
 jagan@amarulasolutions.com, sjg@chromium.org, kever.yang@rock-chips.com
References: <20200511075330.26462-1-frank.wang@rock-chips.com>
 <20200511075725.26665-1-frank.wang@rock-chips.com>
 <20200511075725.26665-3-frank.wang@rock-chips.com>
 <502d8fff-5ae2-b47f-f483-62cd24177ed1@denx.de>
From: Frank Wang <frank.wang@rock-chips.com>
Message-ID: <618d46f5-7970-9b27-e912-36f21b24a957@rock-chips.com>
Date: Tue, 12 May 2020 09:08:21 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <502d8fff-5ae2-b47f-f483-62cd24177ed1@denx.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_180831_861252_3A16176C 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.200 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: jianing.ren@rock-chips.com, marek.belisko@gmail.com, wmc@rock-chips.com,
 u-boot@lists.denx.de, william.wu@rock-chips.com,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 chenjh@rock-chips.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Marek,

On 2020/5/11 17:48, Marek Vasut wrote:
> On 5/11/20 9:57 AM, Frank Wang wrote:
> [...]
>
>> @@ -394,6 +407,12 @@ static int dwc3_glue_probe(struct udevice *dev)
>>   	if (ret)
>>   		return ret;
>>   
>> +	if (glue->resets.count < 1) {
> This condition is only true if count == 0 ?
> What's the purpose of this test ?

For previous dts of the Linux kernel, the reset phandles were in 
dwc3-glue nodes, however, they are moved recently into dwc3 that is a 
child node of dwc3-glue.

So the above codes is to make compatible.


>> +		ret = dwc3_glue_reset_init(child, glue);
>> +		if (ret)
>> +			return ret;
>> +	}
>> +
>>   	while (child) {
>>   		enum usb_dr_mode dr_mode;
>>   
> [...]
>
>

BR,
Frank




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
