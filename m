Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3919ACE3
	for <lists+linux-rockchip@lfdr.de>; Fri, 23 Aug 2019 12:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=APiXHXeCMrP8Zgl1v+VrtClXwXRtfbqHjfi2m4J6vVk=; b=NSXGrFB1/dRoSy9Glmdt4yGWZ
	gNg5V8ZDpJzOuWlg28VgHknIsyI5hgnpqrmEb4Zt00Yo5fsvmiqousmqLtKYqkVbk7ewckHO4Wwl+
	qpud0V2WCFF3rWRGHO/BFwyAsR8h5fWV70xudydQCrl2hqJBXs4lwEQ8A5AimJEqhkoQ7e7G8+HzN
	R7mqQuT0YBzq7tAjvT5mhrGilXLeyX9i/w5/Cy0sbvWwyWJ+jXaoUuSxGM100tcVtjviL7FwG74Bm
	gF5mc+PTnxhw37KgcoYfDXB/54Q1I5BEYb9FNJk5LljQ7RS8ixy5hG9gQjbOapGYptAdutdExqou0
	9345Nr0Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i16bR-0004dM-CR; Fri, 23 Aug 2019 10:15:29 +0000
Received: from mail.manjaro.org ([176.9.38.148] helo=manjaro.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i16b4-0003Gg-NI; Fri, 23 Aug 2019 10:15:08 +0000
Received: from localhost (localhost [127.0.0.1])
 by manjaro.org (Postfix) with ESMTP id 7B5FD3740EBC;
 Fri, 23 Aug 2019 11:56:07 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IbuvMILmiiIE; Fri, 23 Aug 2019 11:56:04 +0200 (CEST)
MIME-Version: 1.0
Date: Fri, 23 Aug 2019 11:56:03 +0200
From: Dan Johansen <strit@manjaro.org>
To: Tomohiro Mayama <parly-gh@iris.mystia.org>
Subject: Re: [PATCH] fix usb2 on rock64
Organization: Manjaro ARM
In-Reply-To: <991ac738-1f5d-8bbd-9c0e-a7e6c05514d9@iris.mystia.org>
References: <693449761bdd3e435089e849b0114018@manjaro.org>
 <991ac738-1f5d-8bbd-9c0e-a7e6c05514d9@iris.mystia.org>
Message-ID: <4d415a1c775a768274f5780911acdf53@manjaro.org>
X-Sender: strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_031506_951561_D6C9315E 
X-CRM114-Status: UNSURE (   6.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Tomohiro Mayama skrev den 2019-03-08 11:48:
> Hello Dan,
> 
> On 2019/03/08 16:35, Dan Johansen wrote:
>> -        gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
>> +        gpio = <&gpio0 RK_PD3 GPIO_ACTIVE_HIGH>;
> 
> According to Robin's advice by reading the schematic, correct GPIO pin
> assignment is RK_PA2, but GPIO_ACTIVE_LOW. This fixed the USB problem
> for me.
> 
> Please see the following thread:
> https://lists.infradead.org/pipermail/linux-rockchip/2019-March/023298.html
> 
> Also please see this patch:
> https://lists.infradead.org/pipermail/linux-rockchip/2019-March/023300.html
> 
> Or won't your problem be fixed with this patch?
> 
> Regards,
> Tomohiro

Ah, didn't see that one.
Yes it does.
Sorry. Please remove this patch submission.

-- 
Sincerely

Dan "Strit" Johansen

Project Lead on the Manjaro ARM project
https://www.manjaro.org

Catch me on:
Mastodon: @strit@mastodon.social
Matrix: @strit:matrix.org
Wire: @strit
Email: strit@manjaro.org

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
