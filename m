Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEB912607C
	for <lists+linux-rockchip@lfdr.de>; Thu, 19 Dec 2019 12:08:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=K6S/DYq0Znzpqh7q2d3FxQl9dcTNtbMYkxfMLYhNCIQ=; b=JAiSSWWhT7NuVQYUvT3XikpzY2
	0DKukLpPOHqRQzc9AoJLGaV5RqxKXfUETjOuHirlraYQxMMzcRLnpoBDAR8oE+DS7fjiFA+d0lNxl
	C+hIhbh6qpmjo5gt5eEtUm5Iu4DehzwBZs0UpATebtZ4FTgrfq1Pct4UQXxO/J/ZVLo/Gt59rio9E
	3dN61HRrtS+VDgbeAKmSge6cP09wLbH5Zyr6L6BwXhQOmDbHDMwLPhWoV8eX+xTHFIWt44bq6GjP1
	VWM52bO1OxJUrWLFXo4oqnfuaXmQnxjCqOcindZonoe8WzhIrhq+DNlEioF7qVHS8ZAqoNpOmx+FE
	bzYDHWOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihtet-0002MJ-0v; Thu, 19 Dec 2019 11:07:55 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihteq-0002Lk-HI
 for linux-rockchip@lists.infradead.org; Thu, 19 Dec 2019 11:07:53 +0000
Received: by mail-wr1-x443.google.com with SMTP id q6so5517095wro.9
 for <linux-rockchip@lists.infradead.org>; Thu, 19 Dec 2019 03:07:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=Y8f2bX26xETxLdPFNjzsuoxmPNkTnlyN++rTG5oCUMs=;
 b=CuDXosOqgeF3aAa7N1LIOMD7cwK1z985Ff8HA6kRW1PnMYAPwLi84h/Ud0uzOxlq9k
 UMtasVPRqi1jPueKAB/RP49oaKsCVlGGma6erDHJtMMRi+q7zT5VGU0+l3Yw0WhXSlUy
 x5rGxfn+c3vrGMZOEUd0TkPBafMzNJQvd4nyVC2XFlg+lciyW3eahxB3RsoFtI1cyiWl
 TeLcd6tjqyQHTCa1DvDyTHB/KeqX6boKyBGbTYldNW3XcLrRVNUR66iVdOvySZv8uH4w
 bqvpCxAG8CORfKqG3/fpTi89laGTfYEwvPT2FszWscYdA84lJOiTSXBXzpmZC+Xm3Sh5
 H7fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Y8f2bX26xETxLdPFNjzsuoxmPNkTnlyN++rTG5oCUMs=;
 b=ZSNTxlIf7Xx+4rEYfYQBDcL521tW02FPMOIny4tg+W/uszj+IEX4x+ar6b8ru1+zgQ
 iqhT2RNgv9FoFcsKxZfexBZNp5JrCSV/4CeoIiBZ48TzBYydgHgJgCXXKR/g3A7NAsM5
 AfsP415ZxMrOUzNNPd8+qahAl1ElBPvH2Hrxv6YFiXIGVT51/Repz7yxfLyldNCzK7Vu
 hwJxdH4wK8up3V5cCcXIlkKO3pHEYoeCFrvbH7HZla1YzoIThW2DTJOa5AO2O/AgbUNH
 NJgHt/Y5har5lV8G1wxsrZTnxO/UjLy15sPTg3cY8Jl3QNIJ7qzbdMMX5cOEvkTJMWqq
 sjpw==
X-Gm-Message-State: APjAAAWMhuVGrvlFQTBU1FblKc2O3OycJbvHgnPbj9wlnAzYw+SolV/B
 eKpGMvPdGwSg4JMzfjv/F8vWCBI7
X-Google-Smtp-Source: APXvYqwK3PhOvn/Jodp66qkyj6dqHUmO+W8s5L+BnbnzXr+2zmCpYdBCp4A11tAzblSuP/+EzIo2Jw==
X-Received: by 2002:a5d:4602:: with SMTP id t2mr8573441wrq.37.1576753670050;
 Thu, 19 Dec 2019 03:07:50 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q3sm5641755wmj.38.2019.12.19.03.07.49
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Dec 2019 03:07:49 -0800 (PST)
Subject: Re: [V2 1/1 PATCH] arm64: dts: rockchip: add ROCK Pi S DTS support
From: Johan Jonker <jbx6244@gmail.com>
To: linux-rockchip@lists.infradead.org
References: <20191217080014.11756-1-akash@openedev.com>
 <80ca8b77-6a55-ef33-b772-eccaad8871e6@gmail.com>
Message-ID: <c76b4cbc-5a3b-679b-aaf7-fcdb6e655078@gmail.com>
Date: Thu, 19 Dec 2019 12:07:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <80ca8b77-6a55-ef33-b772-eccaad8871e6@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_030752_604092_801CCA68 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Akash,

In a dtsi file nodes are sort in reg order.
In a dts file nodes are sort in alphabetical order.
Place &sdmmc and &spi2 below &sdio.

&sdio {

};

&sdmmc {

};

&spi2 {

};


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
