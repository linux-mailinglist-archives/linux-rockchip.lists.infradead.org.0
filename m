Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 727A512073E
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 14:36:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/qF0ujVvTfxFxTBByquN4zj47AT+8xgZoc6P8b1gt88=; b=OstZjKapALJwufDC7olg+Izr/j
	mOKGpWX+6YOUgKEu8QCamqXqCtS5zuKL5r9ak8ETgD7E9TxLlWp/gkbfwEVhT3w3m72xPrWwEvgKd
	+WVShiMUgAmN9cMlt6GcSY8gHixk36533IwTKthR2yumkwPEjvQXbfY55yzmngzC6w+3Glzeg5hFY
	XYvGRW5Igh3ep9eRH53YPvvO28kDyhpWshk30/zrIcoXlqYxNRhAjFCOSJwj5n7d23YMxiYcNdojL
	xd5UxMTfGE0RwY0e5ThppqgrW2KP3bmNTCduFkhGm+1ypjNgOL7U3tceEEmd2ryZa/zMy7uEDTW9A
	ppUqnT5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igqXc-00058H-Ie; Mon, 16 Dec 2019 13:36:04 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igqXZ-00057r-Gh
 for linux-rockchip@lists.infradead.org; Mon, 16 Dec 2019 13:36:02 +0000
Received: by mail-wm1-x344.google.com with SMTP id a5so6750510wmb.0
 for <linux-rockchip@lists.infradead.org>; Mon, 16 Dec 2019 05:36:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:references:subject:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=X7vpqb/2ghjAkyGVMyUJjGBsbN11xvWhabWMtBDWGoU=;
 b=Fpoyzr8MmIMXzNpnjKyoO/90ALvy/2G2onURnAHFg8EYdzGjDI1AEvk4H3DR2w6NmS
 XPWOQ30I5hsrO3X0an/b/MlIM8LyTzkhZVYK9uuRy1uipkyjNXCgEudwi1g60yWdex2O
 1h1dfQ21Wc/g9uMkLMRd1xyO8BPvyHvivGAkwubI7Bznx5i+fC8GF/j/aA1GG218gkeX
 kzUCbArltBhDhJDH6bJM+RBXl9THpOVwR+92FiM6a0P0w8ac3C0N+X9QmJbxv/9G75Z4
 JOnqkQdLJsgeyqv60RpU0/Pdz2dcUfhkhKxZVqE/882fQqr54FaJ3jzw/oz2kQkh50UX
 xSwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=X7vpqb/2ghjAkyGVMyUJjGBsbN11xvWhabWMtBDWGoU=;
 b=TuNoCTO4lhg7kV/VotGR0Ocn7TTizkQ08to1mfKjDYiJLmUgs/wdqXcun49BOS5dHm
 TEvUPlgQynEBIY713fzfGB0kHBI2glfsx0cSLD2TPJjYEU+4xk2GMCktg3a2k0vgJMVt
 0hhUQfyvCIpUj19Onkiup3GvqCPqxcD8CaheCT8Rm6aXZIEJYYfPDsSrAddxlcuvlT3W
 OoBfsC8q5bzG4KY5YpaSG3+s2npAYbOhRRq1mkP3nAUVKZ8oL5Y683i6sEz/VCZ0k4nb
 OfjQb5YgUu0oOQNv0dvTQZPsOT8T7HNd9307GiGSgffcGtYZilb6VFUr5XeS/y4TzUmp
 mZEg==
X-Gm-Message-State: APjAAAXTkTrsbsokzMoY0USfAUNHDJxdWAH1U7jLuZ9LY6puwmtw20Ht
 21x7RhE6ZGelv8hpVDE8xdF94kow
X-Google-Smtp-Source: APXvYqxHb/jS71RMQeV8BeT7cMKj82tzDl4g8FOzGe4YQM0/35ndFvmFkuSuZoj6P3uC9KHfNsEExg==
X-Received: by 2002:a7b:c935:: with SMTP id h21mr29728646wml.173.1576503359367; 
 Mon, 16 Dec 2019 05:35:59 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id h2sm21566533wrv.66.2019.12.16.05.35.58
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Dec 2019 05:35:58 -0800 (PST)
To: linux-rockchip@lists.infradead.org
References: <20191211235253.2539-9-smoch@web.de>
Subject: Re: Re: [PATCH v2 8/9] arm64: dts: rockchip: RockPro64: enable wifi
 module at sdio0
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <f52f05c3-92ce-fd93-802c-d8798abc2b25@gmail.com>
Date: Mon, 16 Dec 2019 14:35:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191211235253.2539-9-smoch@web.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_053601_577717_879117C7 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Soeren,

Same commit as for V1.
The mmc-controller.yaml didn't explicitly say disable-wp is for SD card
slot only, but that is what it was designed for in the first place.
Remove all disable-wp from emmc or sdio controllers.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
