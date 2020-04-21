Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC391B2A31
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 Apr 2020 16:40:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qesgS0Uh6LwO1EVojmp3orhaag1+vP6QTivC+bX4iiI=; b=rS0mtyBCIv/RXt
	yEhU487U25XTc1ySJtUcHXI+idxqiz7pghiTpTZwNmg4A2sL/7oLv2Y8n4TcxnuDuhJhplBe2VY6C
	OSSHN/ZSk3n458S3gLIgp/mFncexRM/IaiqvlO8v5X7yTVBbhMSaZT0pgX/6dcwGcmzG5VipCrWEA
	siWqFbzbI/mu3/bXgqaE0mSykSZnH3N2I5ZwWR6k0ULI/O5FViF6TrHGi0p1MB++K/9eeSDeA/3Yh
	VLceUEEYgNdFKhi8OY+GN9vPQeHuVFa6gHjdbLvRrZBe7j6e49QJuqJpuaci/BFUWCtni3rMKWMMh
	wYwr9Xllew6UFF4vauzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQu4Q-0001PX-KT; Tue, 21 Apr 2020 14:40:18 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQu2R-0006Eq-Gc
 for linux-rockchip@lists.infradead.org; Tue, 21 Apr 2020 14:38:18 +0000
Received: by mail-wm1-x343.google.com with SMTP id u127so3970396wmg.1
 for <linux-rockchip@lists.infradead.org>; Tue, 21 Apr 2020 07:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YA77VEvZf8UQcQ4TTsdI/a+SvMgtENjG2+uBnNTp7Ig=;
 b=LbaHCdZ6QeVqbsp9MAokVbaW/yaDO5n04fFH95m1r9QWRNpt+ZG1qJmwIc7EXjnHJY
 NK3ckMDszDV53QmlI3HCQnyljuha5foVDTCr4+6/vD1QqLpBID7lkRt/KBQ5XWiEGYZQ
 /aXEJvbGW/4kGhxEESepQczvZbrM9wH2HAVIASnhwubUe2Wyr7aXUzCOltHcKMXNnS4x
 i8X7rtP1Tb9mendM5gWAPNHJMLahjfL02h35LXrMcYG1UM0n5gEb1iGRDwVETZUcg9AG
 sh/g4A8tPL4fyxgNKBdkbpDehXc0Rrjf9aoO9brY8WB1ZxHWiIOCmV5cbVjuUIMH7EuK
 vcPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YA77VEvZf8UQcQ4TTsdI/a+SvMgtENjG2+uBnNTp7Ig=;
 b=k2y7Q42UR9m2Bh5kBkn276xi/3+NzqoKM8lhV5Us+dCpOqj9pO6GQN+6g+qZ+qAO0I
 /grBSg7n1l1PaF+EeTG4ESX3I2naXZcA8nDhboN1zshX2qKouCX4Ml3XmZt2efOmRgsu
 Qinw1FtHgIif7rJA69rP9HKj5E2dpAjV6Ew4fdycARknoaiS++UqUQRxRssqHns1sjOJ
 9gexehtn5JKrtN1wfcZmaOfg0N8GLR8rEdq85i5zvajhpu8XlSfB4CTJUDHhw0dBnHsW
 Uwk5lLohibnnObdpff3IXkVIC9L1yi7KBeR5F+cQnbLQPUX9qkAW7XZNd64yGnYrfypA
 U5wA==
X-Gm-Message-State: AGi0PuYm8cKl5ZjnsfTgM0KxW42EGd+nk58u6fWdlHQhT4snPZZI9FSM
 VZ5rE3LaeLav4S5wuLKPz2AyhkL5
X-Google-Smtp-Source: APiQypK6WFC+eeMq2iNU8/2Y4EFxBMwpP04anrgv02aAulvE9AG2v/u6c11Sb7yxTkz+kd6P4Qo0Xg==
X-Received: by 2002:a1c:f609:: with SMTP id w9mr5120046wmc.123.1587479893310; 
 Tue, 21 Apr 2020 07:38:13 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q10sm4150118wrv.95.2020.04.21.07.38.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Apr 2020 07:38:12 -0700 (PDT)
To: ezequiel@collabora.com
References: <20200403221345.16702-5-ezequiel@collabora.com>
Subject: Re: [PATCH v8 4/5] media: rkvdec: Add the rkvdec driver
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <f596299f-9a4b-6fc7-17c5-b8a720301c86@gmail.com>
Date: Tue, 21 Apr 2020 16:38:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200403221345.16702-5-ezequiel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_073815_609192_144ED314 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: heiko@sntech.de, linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, boris.brezillon@collabora.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

The MAINTAINERS document is now sort by entry name and the field names
sort for all entries.
Ask Joe Perches.

Johan


> diff --git a/MAINTAINERS b/MAINTAINERS
> index 2b8b3e7f3df3..3cd32c54dcec 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14298,6 +14298,13 @@ F:	drivers/hid/hid-roccat*
>  F:	include/linux/hid-roccat*
>  F:	Documentation/ABI/*/sysfs-driver-hid-roccat*
>  
> +ROCKCHIP VIDEO DECODER DRIVER
> +M:	Ezequiel Garcia <ezequiel@collabora.com>
> +L:	linux-media@vger.kernel.org
> +S:	Maintained
> +F:	drivers/staging/media/rkvdec/
> +F:	Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> +
>  ROCKCHIP ISP V1 DRIVER
>  M:	Helen Koike <helen.koike@collabora.com>
>  L:	linux-media@vger.kernel.org


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
