Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5827D1AA0A
	for <lists+linux-rockchip@lfdr.de>; Sun, 12 May 2019 04:51:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oo6tlL8Y3EeDt0eCIrCM+pLn3et60of1XgYJGjuamOo=; b=dVAzRM/SCrlvp/dzj+T9vyz03
	q0KJkZHDLUM6h2WEtX2Z1/YtLrSLVJX8RkxdUCnZP9XBaNIuzZMtKKpM9CVkLxpUXyeNKX75mxRvq
	BhNoKgT4czSgexFF8a+nEG2oy6X8Zkc1DJxoDBcCOp3U0Pi0jBAqQ196fuF8wWMVQihmk98fbOth5
	RycSygzj8qwgUnnXiNcc6ZXI3VRV79CYI/rkqAjpkGDjrVnxlbv57CKCHym5utsUzdbDWodc/Y0w7
	331X58JtH2F//p00LMO3uFSvuV9sDlZLmdLD//TWrWJNvZ0H2IS9thEENyjRkJEZVHYCODH/POIWP
	aWBRjKd0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPeZu-0003Ly-GM; Sun, 12 May 2019 02:51:06 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPeZp-0003La-Lv
 for linux-rockchip@lists.infradead.org; Sun, 12 May 2019 02:51:04 +0000
Received: by mail-qk1-x742.google.com with SMTP id k189so6116811qkc.0
 for <linux-rockchip@lists.infradead.org>; Sat, 11 May 2019 19:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=B/KAgWyfgqk5almlyR5+Jik5osa6GatCOgrDSi79Lus=;
 b=Q/jpB414XuZHZK744XLTofwjnRhTeM1D9lOotrJdwgPg21oZTwJ2xumrkowYRs6Y9A
 v/NBZQjAuebqarWPsldzvgeyTYKiTkiZ57BJpCTe5ohmFQrmGPVxpsYNMp3xIolNb9w5
 vQvFBTwye6NjdHp1glo1SfQ1wkBmaHYY9NQlfXbW2p/l7XWXaSWdvwYSOD9deN1Z2olk
 HBvp/WarFC6WNocrVddb8bxlwabJgGnS8mNK3RB21b+xnxFROq3guZ8IpSGbdXLc44GO
 EwIdZsor9wC+1UVh1fT4FJ91rG0QFx/yOpu3s2xws7W5yIIzZS7PBwBv3p+fUGWRHACn
 HzGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=B/KAgWyfgqk5almlyR5+Jik5osa6GatCOgrDSi79Lus=;
 b=F2XBZX445+35qZiYXEI/M1UnTJOKhj5QxIMwgM4VuKPjEPCCg2VlWPYFEnmE7cL61Y
 0zBc6CLK0sdjHGhwFeqyZQ0XDf+voDQtTzgHgiskDFs+oJckblZUNmp7BRqNzRisF4Te
 TAawdqzHjaXHxGbetIlrHKLzAqyP/8I6Hk8IR1DxGh5YWgk4KJz2mDz8NDV2BqhlPkmR
 lZJO2EMyDvxzyHOgCe5Mwo4A0qCdpbsoI1Lozie4tQa76M4abq1chgJgRGPE+RpfIvVI
 5Bon+B6nOSZ9a50RZ1AUbnWVg0SoOUp91yJ+WdxnJFGmpveKzIzVp2yBmvLbis0Ybsgo
 SQpQ==
X-Gm-Message-State: APjAAAWgEtxuz7PXepGOWqnmjGOY+RekD/FP0vxSwbWztneukTytLAkm
 tFzmw08XuALjF7HyZKtOZrygrQu5Plc=
X-Google-Smtp-Source: APXvYqxqamy1x2lu+27bfTpt1oirSw3dVa/Z1yxHDq01KM0Zq9NaiL/fo8n9/yklzTfGMT3f2KLSIg==
X-Received: by 2002:a05:620a:1019:: with SMTP id
 z25mr9746175qkj.46.1557629459948; 
 Sat, 11 May 2019 19:50:59 -0700 (PDT)
Received: from ?IPv6:2601:153:900:ebb:b5f3:c6ee:317b:8b7e?
 ([2601:153:900:ebb:b5f3:c6ee:317b:8b7e])
 by smtp.gmail.com with ESMTPSA id e131sm4851787qkb.80.2019.05.11.19.50.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 11 May 2019 19:50:59 -0700 (PDT)
Subject: Re: [Regression] "net: phy: realtek: Add rtl8211e rx/tx delays
 config" breaks rk3328-roc-cc networking
To: Andrew Lunn <andrew@lunn.ch>
References: <066a0d38-2c64-7a1e-d176-04341f0cb6d7@gmail.com>
 <20190512023754.GK4889@lunn.ch>
From: Peter Geis <pgwipeout@gmail.com>
Message-ID: <ae62419b-53f1-395d-eb0e-66d138d294a8@gmail.com>
Date: Sat, 11 May 2019 22:50:59 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190512023754.GK4889@lunn.ch>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_195101_763813_93EE72B6 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Serge Semin <Sergey.Semin@t-platforms.ru>, netdev@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 5/11/2019 10:37 PM, Andrew Lunn wrote:
> On Sat, May 11, 2019 at 07:17:08PM -0400, Peter Geis wrote:
>> Good Evening,
>>
>> Commit f81dadbcf7fd067baf184b63c179fc392bdb226e "net: phy: realtek: Add
>> rtl8211e rx/tx delays config" breaks networking completely on the
>> rk3328-roc-cc.
>> Reverting the offending commit solves the problem.
> 
> Hi Peter
> 
> The fix should be in net, and will soon make its way upwards.
> 
>      Andrew
> 


Good Evening,

Thanks, is there a link to the patch so I may test it?

Peter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
