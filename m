Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C5A1CDAC3
	for <lists+linux-rockchip@lfdr.de>; Mon, 11 May 2020 15:08:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7IEovZWXXpwQqtD817yAPyDMZt0iPXDtm10Z/h2qFRs=; b=YO5O0Wa9Z+weiD
	QN2oXjNGf14soSJ2gwdbGHDHtMnDQwsLyPPHSYNzc1nHf8hL4nX0i5Jhd62aOGltVlfI8ChRZ2AAB
	PKIHt1RwSFkhS2Ji8uFGC9t8m1e6/uce0kroWPTacMkFuio0Mc2yfd5WT/lLI7KgmOtPwZCXKXcfC
	tLR9WkROulMwnGcd95kxkK91h71JBT0viGuOZzab5MogaST7LOr0iVXWI1d4qT1TqyKHGYZzD0ams
	L09C4G8GKxVYJuqD/QbElJZJsYRVapY5VMHTAE7mTq80X8NncQHZCH8IF+wsW7VZS4XKWzQGOwmFu
	JaEPXmEYGHvqkgZ+P/cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY8AG-00035c-Mr; Mon, 11 May 2020 13:08:12 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY8AD-000350-49
 for linux-rockchip@lists.infradead.org; Mon, 11 May 2020 13:08:10 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49LLpF0Kqwz1rqqS;
 Mon, 11 May 2020 15:08:04 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49LLpD5HDqz1qspZ;
 Mon, 11 May 2020 15:08:04 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 0Eha974uS5H3; Mon, 11 May 2020 15:08:02 +0200 (CEST)
X-Auth-Info: qSNgslXUtuKXQzTWr/K0McTCb+2UYO5DsPZrXWctQqY=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Mon, 11 May 2020 15:08:02 +0200 (CEST)
Subject: Re: [PATCH v4 12/16] usb: dwc3: add make compatible for rockchip
 platform
To: Frank Wang <frank.wang@rock-chips.com>, heiko@sntech.de,
 bmeng.cn@gmail.com, philipp.tomsich@theobroma-systems.com,
 klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com,
 sjg@chromium.org, kever.yang@rock-chips.com
References: <20200511075330.26462-1-frank.wang@rock-chips.com>
 <20200511075725.26665-1-frank.wang@rock-chips.com>
 <20200511075725.26665-3-frank.wang@rock-chips.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <502d8fff-5ae2-b47f-f483-62cd24177ed1@denx.de>
Date: Mon, 11 May 2020 11:48:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200511075725.26665-3-frank.wang@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_060809_317911_41476D1E 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 5/11/20 9:57 AM, Frank Wang wrote:
[...]

> @@ -394,6 +407,12 @@ static int dwc3_glue_probe(struct udevice *dev)
>  	if (ret)
>  		return ret;
>  
> +	if (glue->resets.count < 1) {

This condition is only true if count == 0 ?
What's the purpose of this test ?

> +		ret = dwc3_glue_reset_init(child, glue);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	while (child) {
>  		enum usb_dr_mode dr_mode;
>  

[...]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
